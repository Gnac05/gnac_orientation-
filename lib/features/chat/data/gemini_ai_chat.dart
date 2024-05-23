import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:gnac_orientation/core/utils/constant.dart';
import 'package:gnac_orientation/core/utils/injection/injection.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class GeminiAiChat {
  String? apiKey;
  bool get hasApiKey => apiKey != null;
  GenerativeModel? model;
  bool get hasModel => model != null;
  ChatSession? chat;
  bool get hasChat => chat != null;

  // Access your API key as an environment variable (see "Set up your API key" above)
  bool getApiKey() {
    apiKey = dotenv.env['API_KEY'];
    if (apiKey == null) {
      debugPrint('No \$API_KEY environment variable');
      return false;
    }
    return true;
  }

  // For text-only input, use the gemini-pro model
  bool geneModel() {
    if (hasApiKey) {
      model = GenerativeModel(
        model: 'gemini-pro',
        apiKey: apiKey!,
        generationConfig: GenerationConfig(
          maxOutputTokens: 9870,
          temperature: 0.9,
          topK: 100,
          topP: 0.9,
          candidateCount: 1,
        ),
      );
      return true;
    }
    return false;
  }

  bool initChat() {
    if (hasModel) {
      // Initialize the chat
      String classe = getIt<AppConstant>().myUserData['Série'];
      chat = model!.startChat(
        history: [
          Content.text(
            // 'Salut! Tu es le meilleur conseiller d\'orientation pour aider nous les nouveaux bachelier à bien choisir notre filière de formation en fonction de nos capacité et rève. Aide moi alors dans mes choix de filière sachant que j\'ai eu un BAC $classe béninois. Voici mes données : ${getIt<AppConstant>().myUserData.toString()}.\nCarrière disponible au Bénin :  ${getIt<AppConstant>().allCarrers[classe].toString()}',
            'Salut! Tu es le meilleur conseiller d\'orientation pour aider nous les nouveaux bachelier à bien choisir notre filière de formation en fonction de nos capacité et rève. Aide moi alors dans mes choix de filière sachant que j\'ai eu un BAC $classe béninois. Voici mes données : ${getIt<AppConstant>().myUserData.toString()}.\nCarrière disponible au Bénin :  ${getIt<AppConstant>().allCarrers[classe].toString()}\nVoici le guide d\'orientation : ${getIt<AppConstant>().data[classe].toString()}',
          ),
          Content.model([
            TextPart(
                'Je serais très heureux de pouvoir vous aider a bien choisir votre filières tout en tenant compte des informations que vous m\'aviez fornir sur vous ainsi que des carrers disponible dans votre pays et du guide d\'orientation.'),
          ])
        ],
        // safetySettings: [
        //   SafetySetting(HarmCategory.dangerousContent, HarmBlockThreshold.none),
        // ],
      );
      return true;
    }
    return false;
  }

  Future<String> sendMessage(String message) async {
    try {
      var content = Content.text(message);
      var response = await chat!.sendMessage(content);
      debugPrint(response.text);
      return response.text ?? 'Désolé !!!\nUne erreur est survenue !';
    } catch (e) {
      debugPrint("Error : $e");
      return "Désolé !!!\nUne erreur est survenue !";
    }
  }

  final ScrollController scrollController = ScrollController();
  void scrollDown() {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => scrollController.animateTo(
        scrollController.position.maxScrollExtent,
        duration: const Duration(
          milliseconds: 750,
        ),
        curve: Curves.easeOutCirc,
      ),
    );
  }
}
