import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ll/cache_helper.dart';
import 'package:ll/dio_helper.dart';
import 'package:ll/welcome.dart';
import 'bloc_observer.dart';
import 'cubit/login/login_cubit.dart';




void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DioHelper.init();
  await CacheHelper.init();
  runApp( MyApp());
  BlocOverrides.runZoned(
        () {},
    blocObserver: MyBlocObserver(),
  );
}

class  MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return MultiBlocProvider(
    providers: [
      BlocProvider(create: (context) => LoginCubit()),
    ],
    child: MaterialApp(
      //theme: ThemeData(primarySwatch:Colors.teal ),
      debugShowCheckedModeBanner: false,
      home :welcome()
    ),
  );
  }

}
  
  