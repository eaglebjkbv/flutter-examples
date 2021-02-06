import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            actions: [Text('Deneme'), Text('Deneme2')],
            title: Text('StateFull Deneme')),
        body: InputField());
  }
}

class InputField extends StatefulWidget {
  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  final _formKey = GlobalKey<FormState>();
  int sayici = 0;
  String inputtext = '';
  String outputText;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              onChanged: (text) {
                inputtext = text;
              },
              decoration: const InputDecoration(hintText: 'Enter Your Name'),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Pelease Enter some text';
                }

                return null;
              },
            ),
            ElevatedButton(
              child: Text('Gönder'),
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  setState(() {
                    sayici++;
                    outputText = inputtext;
                  });
                }
              },
            ),
            Text(sayici.toString()),
            Text(inputtext)
          ],
        ));
  }
}
