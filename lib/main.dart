import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:learding_bloc/home_page.dart';
import 'package:learding_bloc/page_bloc/bloc/counter_bloc.dart';
import 'package:learding_bloc/page_bloc/counter_bloc_page.dart';
import 'package:learding_bloc/page_cubit/counter_cubit_page.dart';
import 'package:learding_bloc/page_cubit/cubit/counter_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/bloc': (_) => BlocProvider(
              create: (_) => CounterBloc(),
              child: const CounterBlocPage(),
            ),
        '/cubit': (_) => BlocProvider(
              create: (_) => CounterCubit(),
              child: const CounterCubitPage(),
            ),
      },
      home: const HomePage(),
    );
  }
}

