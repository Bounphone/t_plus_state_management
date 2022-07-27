import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:t_plus_state_management/provider_model.dart';
import 'package:t_plus_state_management/second_provider_model.dart';
import 'package:t_plus_state_management/third_page.dart';
import 'package:t_plus_state_management/third_provider_model.dart';

class SecondScreen extends StatelessWidget {
  String? title;
  String firstName;
  String surnameCons;

  SecondScreen(
      {this.title, required this.surnameCons, required this.firstName});

  @override
  Widget build(BuildContext context) {
    String surname = context.read<ProviderModel>().getSurname;
    return Consumer3<ProviderModel, SecondProviderModel, ThirdProviderModel>(
      builder: (context, model, secondModel, thirdModel, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text(title ?? 'Second page'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$firstName: ${model.getFirstName}',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                Text(
                  '$surnameCons: $surname',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                Text(
                  'Second model: ${secondModel.getSecondDemo}',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                ElevatedButton(
                    onPressed: () {
                      thirdModel.setSurname = model.getSurname;
                      thirdModel.setFirstName = model.getFirstName;
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return ThirdPage();
                      }));
                    },
                    child: Text('Page3'))
              ],
            ),
          ),
        );
      },
    );
  }
}
