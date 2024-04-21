import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
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
      chat = model!.startChat(
        history: [
          Content.text(
              'Salut! Tu es le meilleur conseiller d\'orientation pour aider nous les nouveaux bachelier à bien choisir notre filière de formation en fonction de nos capacité et rève. Aide moi alors dans mes choix de filière sachant que j\'ai eu un BAC béninois.'),
          Content.model([
            TextPart(
                'Je serais très heureux de pouvoir vous aider a bien choisir votre filières.'),
          ])
        ],
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
