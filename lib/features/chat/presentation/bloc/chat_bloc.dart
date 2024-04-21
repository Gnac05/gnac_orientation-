import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gnac_orientation/core/utils/injection/injection.dart';
import 'package:gnac_orientation/features/chat/data/gemini_ai_chat.dart';
import 'package:gnac_orientation/features/chat/presentation/widgets/message_widget.dart';

part 'chat_event.dart';
part 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc() : super(ChatInitial()) {
    on<SendMessageEvent>((event, emit) async {
      try {
        event.lastDiscussion.add(
          MessageWidget(
            isAI: false,
            message: event.message,
          ),
        );
        emit(
          ChatLoaded(
            discussion: event.lastDiscussion,
          ),
        );
        getIt<GeminiAiChat>().scrollDown();

        // const smsWidget = MessageWidget(
        //   isLoading: true,
        //   isAI: true,
        //   message: "Chargement...",
        // );

        // event.lastDiscussion.add(
        //   smsWidget,
        // );

        emit(ChatLoading());

        final String response =
            await getIt<GeminiAiChat>().sendMessage(event.message);

        // event.lastDiscussion.remove(smsWidget);

        event.lastDiscussion.add(
          MessageWidget(
            isAI: true,
            message: response,
          ),
        );
        emit(
          ChatLoaded(
            discussion: event.lastDiscussion,
          ),
        );
        getIt<GeminiAiChat>().scrollDown();

        for (var el in event.lastDiscussion) {
          debugPrint(
              "Index ${event.lastDiscussion.indexOf(el)}: ${el.message}");
        }
      } catch (e) {
        debugPrint("Error: $e");
        event.lastDiscussion.add(
          const MessageWidget(
            isAI: true,
            message: "Désolé !!!\nUne erreur est survenue !\nVeuillez reessayer plus tard.",
          ),
        );
        emit(
          ChatLoaded(
            discussion: event.lastDiscussion,
          ),
        );
        getIt<GeminiAiChat>().scrollDown();
      }
    });
  }
}
