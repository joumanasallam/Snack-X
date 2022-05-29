part of 'signup_cubit.dart';

@immutable
abstract class SignupState {}

class SignupInitial extends SignupState {}


class SignUpLoadingState extends SignupState {}

class SignUpSuccessState extends SignupState {
  final SignUpModel signUpModel;

  SignUpSuccessState(this.signUpModel);
}

class SignUpErrorState extends SignupState {
  final DioError error;

  SignUpErrorState(this.error);
}

