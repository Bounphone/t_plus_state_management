import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:t_plus_state_management/first_screen.dart';
import 'package:t_plus_state_management/provider_model.dart';
import 'package:t_plus_state_management/second_provider_model.dart';
import 'package:t_plus_state_management/third_provider_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ProviderModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => SecondProviderModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => ThirdProviderModel(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: FirstScreen(
          title: 'First page', buttonTitle: 'ໄປໜ້າທີ່2',
        ),
      ),
    );
  }
}
