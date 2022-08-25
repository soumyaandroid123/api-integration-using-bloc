import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multiple_user_bloc/application/bloc/user-login/user_bloc.dart';
import 'package:multiple_user_bloc/application/core/status/status.dart';
import 'package:multiple_user_bloc/core/utils/commons.dart';
import 'package:multiple_user_bloc/core/utils/constants.dart';
import 'package:multiple_user_bloc/core/utils/custom-list-view.dart';
import 'package:multiple_user_bloc/core/utils/snackbar.dart';
import 'package:multiple_user_bloc/core/utils/widgets/skeleton.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ScrollController scrollController;

  @override
  void initState() {
    scrollController = ScrollController();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserBloc, UserState>(
      listenWhen: (p, c) => p.userStatus != c.userStatus,
      listener: (context, state) {
        state.userStatus.maybeWhen(
          orElse: () {},
          failure: (f) {
            f?.maybeWhen(
              orElse: () {
                showSnackbar(
                  context,
                  type: SnackbarType.error,
                  message:
                      'Error occurred while authenticating! Please try again.',
                );
              },
              serverError: (code, message, response) {
                showSnackbar(
                  context,
                  type: SnackbarType.error,
                  message:
                      response?.errorObj?.errorList?[0].msg ?? 'Error Caught',
                );
              },
            );
          },
          success: () async {
            if (state.userStatus == const Status.success()) {
              showSnackbar(
                context,
                type: SnackbarType.success,
                message: 'All users list are showing',
              );
            }
          },
        );
      },
      child: Scaffold(
        appBar: Commons.appBar(context, label: 'User List'),
        body: BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            return state.userStatus.maybeWhen(
              orElse: () {
                return const SizedBox.shrink();
              },
              failure: (f) {
                return Center(
                  child: Text('Something went wrong'),
                );
              },
              loading: () {
                return ListView.builder(
                  itemCount: 10,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Skeleton(
                      margin: const EdgeInsets.only(
                        bottom: UIConstants.baseMargin * 2,
                      ),
                    );
                  },
                );
              },
              success: () {
                return Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        controller: scrollController,
                        padding: const EdgeInsets.only(
                          top: UIConstants.baseMargin * 2,
                        ),
                        physics:
                            !context.watch<UserBloc>().state.enableFeedScroll
                                ? const NeverScrollableScrollPhysics()
                                : null,
                        itemCount:
                            context.watch<UserBloc>().state.userList.length,
                        itemBuilder: (context, index) {
                          return CustomUserListCard(
                            email: state.user.userInfo.avatar,
                            firstName: state.user.userInfo.firstName,
                            lastName: state.user.userInfo.lastName,
                            id: state.user.userInfo.id.toString(),
                            img: state.user.userInfo.avatar,
                          );
                        },
                      ),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
