import 'package:basketball_points_app/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Pages/home_page.dart';

void main() {
  runApp(Basketball_App());
}

class Basketball_App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => CounterCubit(),
        child:
            MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()));
  }
}
