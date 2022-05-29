import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ll/cache_helper.dart';

import '../../dio_helper.dart';
import '../../models/login_model.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  static LoginCubit get(context) => BlocProvider.of(context);



  late LoginModel loginModel;

  void signIn({required username, required password}) {
    emit(LoginLoadingState());
    DioHelper.postData(
        url: "tokens",
        token: CacheHelper.getData(key: "token"),
        data: {
      "username": username,
      "password": password,
    }).then((value) {
      loginModel = LoginModel.fromJson(value.data);
      emit(LoginSuccessState(loginModel));
    }).catchError((error) {
      debugPrint(error.toString());
      emit(LoginErrorState(error));
    });
  }
}