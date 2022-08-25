part of 'user_bloc.dart';

abstract class UserEvent extends Equatable {
  const UserEvent();

  @override
  List<Object?> get props => [];
}

class GetUser extends UserEvent {
  const GetUser({required this.user});

  final User user;

  @override
  List<Object> get props => [user];
}

class RequestUserDetails extends UserEvent {}

