part of 'chat_bloc.dart';

@immutable
sealed class ChatState {}

final class ChatInitial extends ChatState {}

 class ChatLoading extends ChatState {}

 class ChatLoaded extends ChatState {
  final List<MessageWidget> discussion;
  ChatLoaded({required this.discussion});
}

class ChatError extends ChatState {
  final String message;
  ChatError({required this.message});
}

