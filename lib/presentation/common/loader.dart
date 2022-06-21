import 'package:flutter/material.dart';
import 'package:m10_test/domain/constants/colours.dart';

class Loader extends StatelessWidget {
  const Loader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox.square(
        dimension: 42,
        child: CircularProgressIndicator(
          color: AppColors.primary,
        ),
      ),
    );
  }
}
