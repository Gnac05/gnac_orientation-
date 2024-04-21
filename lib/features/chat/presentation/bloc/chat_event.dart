part of 'chat_bloc.dart';

@immutable
sealed class ChatEvent {}

class SendMessageEvent extends ChatEvent {
  final String message;
  final List<MessageWidget> lastDiscussion;
  SendMessageEvent({
    required this.message,
    required this.lastDiscussion,
  });
}
