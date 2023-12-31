import 'package:flutter/material.dart';
import 'package:practica/src/login/useCase/post_login_use_clase.dart';
import 'package:practica/widgets/forms/form.dart';
import 'package:practica/widgets/local_storage/local_storage.dart';
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
            saveData("token", value["token"]).then((value) => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ModeloAppBottomBar()),
              )
            }),
          } else {
            print("Error: Usuario o contraseña incorrectos"),
          }
        }));
      } else {
        print("Error: Campos vacios");
      }
    }
    Widget verticalSpace = const SizedBox(height: 20);

    return Scaffold(
      appBar: AppBar(
        title: const Text('', textDirection: TextDirection.ltr),
        backgroundColor: Theme.of(context).primaryColor,
        titleTextStyle: TextStyle(
          color: Theme.of(context).textTheme.bodyLarge!.color,
          fontSize: 30,
        ),
      ),
      body: Column(
        children: [
          verticalSpace,
          const Text("Rick and Morty app", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
          verticalSpace,
          EmailField(textInName: _textName),
          verticalSpace,
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
      backgroundColor: MaterialStateProperty.all<Color>(Theme.of(context).primaryColor),
      foregroundColor: MaterialStateProperty.all<Color>(Theme.of(context).scaffoldBackgroundColor),

    ),
    child: const Text('Iniciar sesión'),
  );
  }
}