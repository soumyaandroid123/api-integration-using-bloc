import 'package:injectable/injectable.dart';
import 'package:multiple_user_bloc/infrastruture/failure/failure.dart';
import 'package:dartz/dartz.dart';
import '../../domain/models/user/user.dart';
import '../api_client.dart';
import '../endpoints.dart';
import '../../domain/models/success-response/success_response.dart';

abstract class IUserRepository {
  Future<Either<Failure, User>> getUserList();
}

@LazySingleton(as: IUserRepository)
class UserRepository extends IUserRepository {
  @override
  Future<Either<Failure, User>> getUserList() async {
    try {
      final response = await ApiClient.get(
        '${Endpoints.usersList}',
      );

      final tipsDetails = SuccessResponse.fromJson(
        response.resultObj!,
        SuccessResponseType.user,
      ) as User;

      return right(tipsDetails);
    } on Failure catch (e) {
      return left(e);
    }
  }
}