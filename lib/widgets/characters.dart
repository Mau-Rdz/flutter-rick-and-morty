import 'package:flutter/material.dart';
import 'package:practica/src/characters/useCase/get_characters_use_case.dart';
import 'package:practica/widgets/character.dart';


class characters extends StatelessWidget {
  const characters({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    final Widget verticalSpace = SizedBox(height: 20.0);
    final GetCharacterUseCase getCharacterUseCase = GetCharacterUseCase();
    return Column(
        children: [
          verticalSpace,
          SizedBox(
            height: 400,
            child: FutureBuilder<List<Map<String, dynamic>>>(
              future: getCharacterUseCase.execute(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator(); // Loading indicator while fetching data.
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else {
                  final data = snapshot.data;
                  return ListView.builder(
                    itemCount: data!.length,
                    itemBuilder: (context, index) {
                      return MyDataWidget(data[index]);
                    },
                  );
                }
              },
            ),
          )
        ],
      );
  }
}