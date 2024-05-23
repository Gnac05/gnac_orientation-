import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gnac_orientation/core/styles/app_theme.dart';
import 'package:gnac_orientation/core/utils/injection/injection.dart';
import 'package:gnac_orientation/features/chat/data/gemini_ai_chat.dart';
import 'package:gnac_orientation/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:gnac_orientation/features/chat/presentation/widgets/message_widget.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class ChatBody extends StatefulWidget {
  const ChatBody({super.key});

  @override
  State<ChatBody> createState() => _ChatBodyState();
}

class _ChatBodyState extends State<ChatBody> {
  final smsCtr = TextEditingController();
  List<MessageWidget> discussion = [];
  // final GeminiAiChat geminiAiChat = GeminiAiChat();
  @override
  void initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  final bloc = ChatBloc();
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatBloc, ChatState>(
      bloc: bloc,
      builder: (context, state) {
        if (state is ChatInitial) {
          getIt<GeminiAiChat>().getApiKey();
          if (getIt<GeminiAiChat>().hasApiKey) {
            getIt<GeminiAiChat>().geneModel();
            if (getIt<GeminiAiChat>().hasModel) {
              getIt<GeminiAiChat>().initChat();
              // debugPrint("Chat Body init : ${getIt<GeminiAiChat>().hasChat}");
              // if (getIt<GeminiAiChat>().hasChat) {
              // getIt<GeminiAiChat>().sendMessage("Hello. En quoi tu peux m'aider aujourd'hui ?");
              // }
            }
          }
          debugPrint("Api Key ready : ${getIt<GeminiAiChat>().hasApiKey}");
          debugPrint("Model ready : ${getIt<GeminiAiChat>().hasModel}");
          debugPrint("Chat Body init : ${getIt<GeminiAiChat>().hasChat}");
        }

        if (state is ChatLoading) {
          loading = true;
          debugPrint("Chat Body loading : ${getIt<GeminiAiChat>().hasChat}");
        }

        if (state is ChatLoaded) {
          loading = false;
          discussion = [];
          discussion.addAll(state.discussion);
          // setState(() {});
        }

        return Stack(
          children: [
            discussion.isEmpty
                ? const Center(
                    child: Text("Veuillez entrer vos préoccupations"),
                  )
                : ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    // reverse: true,
                    controller: getIt<GeminiAiChat>().scrollController,
                    itemCount:
                        loading ? discussion.length + 1 : discussion.length,
                    itemBuilder: (context, index) {
                      if (loading && discussion.length == index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 100),
                          child: MessageWidget(isAI: true, isLoading: loading),
                        );
                      }
                      if (index == discussion.length - 1) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: loading ? 0 : 100),
                          child: discussion.last,
                        );
                      }
                      // return discussion[index];
                      return discussion[index];
                    },
                  ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                decoration: BoxDecoration(
                  color: AppTheme().appPrimaryColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextFormField(
                          controller: smsCtr,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                          minLines: 1,
                          maxLines: 6,
                          textInputAction: TextInputAction.send,
                          onFieldSubmitted: (value) {
                            if (smsCtr.text.trim() != "" && !loading) {
                              bloc.add(
                                SendMessageEvent(
                                  lastDiscussion: discussion,
                                  message: smsCtr.text.trim(),
                                ),
                              );
                              smsCtr.clear();
                            }
                          },
                          decoration: InputDecoration(
                            hintStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                            hintText: 'Entrer vos préoccupations...',
                            fillColor: Colors.white.withOpacity(0.5),
                            filled: true,
                            hoverColor: Colors.white.withOpacity(0.9),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 10,
                        bottom: 15,
                      ),
                      child: loading
                          ? const CircularProgressIndicator()
                          : IconButton(
                              onPressed: () {
                                if (smsCtr.text.trim() != "") {
                                  bloc.add(
                                    SendMessageEvent(
                                      lastDiscussion: discussion,
                                      message: smsCtr.text.trim(),
                                    ),
                                  );
                                  smsCtr.clear();
                                }
                              },
                              icon: FaIcon(
                                Icons.send_rounded,
                                color: AppTheme()
                                    .appSecondaryColor!
                                    .withOpacity(0.8),
                                size: 40,
                              ),
                            ),
                    )
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

// const discussion = [
//   MessageWidget(isAI: true),
//   MessageWidget(
//       isAI: false,
//       message: "Voici mes préoccupation concerant mes choix de fillières."),
//   MessageWidget(isAI: true),
//   MessageWidget(isAI: false, message: "Merci !!!"),
//   MessageWidget(isAI: true),
//   MessageWidget(
//       isAI: false,
//       message: "Voici mes préoccupation concerant mes choix de fillières."),
//   MessageWidget(isAI: true),
//   MessageWidget(isAI: false, message: "Merci, Merci, Merci !!!"),
//   MessageWidget(
//     isAI: true,
//     message: "Avec plaisir !!!",
//   ),
//   MessageWidget(
//       isAI: false,
//       message: "Voici mes préoccupation concerant mes choix de fillières."),
//   MessageWidget(
//     isAI: true,
//     message: "D'accord !!!",
//   ),
//   MessageWidget(isAI: false, message: "Merci !!!"),
// ];
