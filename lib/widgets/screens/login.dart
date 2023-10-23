import 'package:flutter/material.dart';
import 'package:practica/widgets/screens/home.dart';
import 'package:practica/widgets/forms/form.dart';
import 'package:practica/widgets/navigation_bar.dart';

class loginCustom_ extends StatelessWidget {

  TextEditingController _textName = TextEditingController();
  TextEditingController _textPass = TextEditingController();

  void onChangeEmail(String text) {
    _textName.text = text;
  }
  void onChangePass(String text) {
    _textPass.text = text;
  }

  @override
  Widget build(BuildContext context) {
    void log_in() {
      if(_textName.text != "" && _textPass.text != "") {
        print("Log in");
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ModeloAppBottomBar()),
        );
      } else {
        print("Error");
      }
    }
    Widget verticalSpace = const SizedBox(height: 20);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Aplicaction 1', textDirection: TextDirection.ltr),
        backgroundColor: Colors.red,
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),
      ),
      body: Column(
        children: [
          verticalSpace,
          emailField(onChange:onChangeEmail),
          passwordField(onChange: onChangePass),
          ButtonCustom(textInName: _textName, textInPass: _textPass, loginFunction: log_in),
        ],
      ),
    );
  }
}


class ButtonCustom extends StatelessWidget {

  TextEditingController? textInName;
  TextEditingController? textInPass;
  Function? loginFunction;

  ButtonCustom({this.textInName, this.textInPass, this.loginFunction});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
    onPressed: () {
      loginFunction!();
    },
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrange),
      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),

    ),
    child: Text('Guardar'),
  );
  }
}