import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../dio_helper.dart';
import '../models/login_model.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  static LoginCubit get(context) => BlocProvider.of(context);



  late LoginModel loginModel;

  void signIn(BuildContext context, {required email, required password}) {
    emit(LoginLoadingState());
    DioHelper.postData(url: "tokens", data: {
      "Email": email,
      "Password": password,
    }).then((value) {
      loginModel = LoginModel.fromJson(value.data);
      emit(LoginSuccessState(loginModel));
    }).catchError((error) {
      if (error is DioError) {
        if (error.response!.statusCode == 401) {
          debugPrint(error.response!.data['message']);
        }
      }
      debugPrint(error.toString());
      emit(LoginErrorState(error));
    });
  }
}