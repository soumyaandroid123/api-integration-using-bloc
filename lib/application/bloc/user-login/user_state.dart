part of 'user_bloc.dart';

class UserState extends Equatable {
  const UserState({
    this.user = const User(),
    this.userStatus = const Status.initial(),
    this.enableFeedScroll = true,
    this.userList = const [],
  });

  final User user;
  final List<User> userList;
  final Status userStatus;
  final bool enableFeedScroll;

  UserState copyWith({
    User? user,
    bool? enableFeedScroll,
    Status? userStatus,
    List<User>? userList,
  }) {
    return UserState(
      user: user ?? this.user,
      enableFeedScroll: enableFeedScroll ?? this.enableFeedScroll,
      userStatus: userStatus ?? this.userStatus,
      userList: userList ?? this.userList,
    );
  }

  @override
  List<Object> get props => [user, userStatus];
}
