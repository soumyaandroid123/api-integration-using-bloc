import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_user_bloc/application/core/status/status.dart';
import '../../../domain/models/user/user.dart';
import '../../../infrastruture/services/user_repository.dart';

part 'user_event.dart';
part 'user_state.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc(this._userRepository) : super(const UserState()) {
    on<GetUser>(_onGetUser);
    on<RequestUserDetails>(_onGetUserDetails);
  }

  final IUserRepository _userRepository;

  void _onGetUser(
    GetUser event,
    Emitter<UserState> emit,
  ) {
    emit(
      state.copyWith(
        user: event.user,
      ),
    );
  }

  Future<void> _onGetUserDetails(
    RequestUserDetails event,
    Emitter<UserState> emit,
  ) async {
    emit(
      state.copyWith(
        userStatus: const Status.loading(),
      ),
    );

    final failureOrUser = await _userRepository.getUserList();

    emit(
      failureOrUser.fold(
        (f) => state.copyWith(
          userStatus: Status.failure(f),
        ),
        (user) => state.copyWith(
          userStatus: Status.success(),
          user: user,
        ),
      ),
    );
  }
}
