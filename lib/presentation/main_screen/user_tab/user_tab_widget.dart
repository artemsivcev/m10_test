import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:m10_test/presentation/main_screen/user_tab/widget/user_info.dart';

import '../../../data/user_auth_api.dart';
import '../../../domain/bloc/main_screen/user_screen/user_cubit.dart';

class UserTabWidget extends StatelessWidget {
  const UserTabWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          UserCubit(context.read<UserAuthApi>())..getCurrentUser(),
      child: BlocBuilder<UserCubit, UserState>(
        builder: (context, state) {
          if (state is CurrentUser) {
            return UserInfo(user: state.user);
          }
          return Container();
        },
      ),
    );
  }
}
