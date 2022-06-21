import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:m10_test/presentation/main_screen/main_screen.dart';

part 'main_cubit.freezed.dart';

part 'main_state.dart';

/// Main cubit for [MainScreen]
/// It using to control bottom navigation bar
class MainCubit extends Cubit<MainState> {
  MainCubit() : super(const SelectPage(0));

  void selectPage(int page) {
    emit(SelectPage(page));
  }
}
