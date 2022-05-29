import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ll/cache_helper.dart';
import '../../dio_helper.dart';
import '../../models/signup_model.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit() : super(SignupInitial());
  static SignupCubit get(context) => BlocProvider.of(context);

  late SignUpModel signUpModel;

  void userRegister({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
  }) async {
    emit(SignUpLoadingState());
    DioHelper.postData(url: "register", data: {
      "firstname": firstName,
      "lastname": lastName,
      "email": email,
      "password": password,
    }).then((value) {
      debugPrint(value.data.toString());
      CacheHelper.saveData(key: "token", value: value.data['token']);
      print( "Token is:" + CacheHelper.getData(key: "token"));
      signUpModel = SignUpModel.fromJson(value.data);
      emit(SignUpSuccessState(signUpModel));
    }).catchError((error) {
      debugPrint(error.toString());
      emit(SignUpErrorState(error));
    });
  }

}
