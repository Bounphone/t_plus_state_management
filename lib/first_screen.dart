import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:t_plus_state_management/provider_model.dart';
import 'package:t_plus_state_management/second_provider_model.dart';
import 'package:t_plus_state_management/second_screen.dart';

class FirstScreen extends StatelessWidget {
  String title;
  String buttonTitle;

  FirstScreen({required this.title, required this.buttonTitle});

  TextEditingController firstName = TextEditingController();
  TextEditingController surname = TextEditingController();
  TextEditingController secondDemo = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Consumer2<ProviderModel, SecondProviderModel>(
      builder: (context, model, secondModel, _) {
        return Scaffold(
          appBar: AppBar(
            title: Text('$title'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: firstName,
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: surname,
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: secondDemo,
                ),
                SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                    onPressed: () {
                      print('Input: ${firstName.text}');
                      model.setFirstName = firstName.text;
                      model.setSurname = surname.text;
                      secondModel.setSecondDemo = secondDemo.text;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => SecondScreen(
                                    firstName: 'ຊື່',
                                    surnameCons: 'ນາມສະກຸນ',
                                    title: 'TPlus',
                                  )));
                    },
                    child: Text(buttonTitle))
              ],
            ),
          ),
        );
      },
    );
  }
}
