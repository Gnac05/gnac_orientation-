part of 'my_profile_bloc.dart';

abstract class MyProfileState {}

class MyProfileInitial extends MyProfileState {}

class MyProfileLoading extends MyProfileState {}

class MyProfileFailure extends MyProfileState {}

class PictureReadyState extends MyProfileState {
  final String picture;

  PictureReadyState(this.picture);
}

class UsersReadyState extends MyProfileState {
  final List<User> allProfiles;

  UsersReadyState({required this.allProfiles});
}
