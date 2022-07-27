import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:t_plus_state_management/third_provider_model.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThirdProviderModel>(builder: (context, model, _) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Third page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'firstname: ${model.getFirstName}',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              Text(
                'surname: ${model.getSurname}',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ],
          ),
        ),
      );
    });
  }
}
