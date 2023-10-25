import 'package:flutter/material.dart';
import 'package:practica/src/login/useCase/post_login_use_clase.dart';
import 'package:practica/widgets/forms/form.dart';
import 'package:practica/widgets/navigation_bar.dart';

class LoginCustom extends StatelessWidget {

  final TextEditingController _textName = TextEditingController();
  final TextEditingController _textPass = TextEditingController();

  final PostLoginUseCase postLoginUseCase = PostLoginUseCase();

  LoginCustom({super.key});

  @override
  Widget build(BuildContext context) {
    void logIn() {
      if(_textName.text != "" && _textPass.text != "") {
        var payload = {
          "username": _textName.text,
          "password": _textPass.text
        };
        postLoginUseCase.execute("https://dummyjson.com/auth/login",payload).then(((value) => {
          if(value["status"] == "success"){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ModeloAppBottomBar()),
          )
          } else {
            print("Error: Usuario o contraseña incorrectos")
          }
        }));
      } else {
        print("Error: Campos vacios");
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
          EmailField(textInName: _textName),
          PasswordField(textInPass: _textPass),
          verticalSpace,
          // ErrorMessage(message: errorMessage),
          ButtonCustom(textInName: _textName, textInPass: _textPass, loginFunction: logIn),
        ],
      ),
    );
  }
}


class ButtonCustom extends StatelessWidget {

  final TextEditingController? textInName;
  final TextEditingController? textInPass;
  final Function? loginFunction;

  const ButtonCustom({super.key, this.textInName, this.textInPass, this.loginFunction});

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
    child: const Text('Guardar'),
  );
  }
}