import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rovanna_app/core/helper/api.dart';
import 'package:rovanna_app/core/utils/approuter.dart';
import 'package:rovanna_app/core/utils/constans.dart';
import 'package:rovanna_app/features/home/data/data_sources/home_data_source.dart';
import 'package:rovanna_app/features/home/presentation/manager/product/product_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ProductCubit(
            ProductDataSourceRepoImpl(
              Apiservices(
                Dio(),
              ),
            ),
          ),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.router,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kSecoundryColor,
        ),
      ),
    );
  }
}
