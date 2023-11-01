import 'package:flutter/material.dart';
import 'package:practica/src/locations/useCase/get_locations_use_case.dart';
import 'package:practica/widgets/locations/location.dart';


class LocationsList extends StatelessWidget {
  const LocationsList({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    const Widget verticalSpace = SizedBox(height: 20.0);
    final GetLocationUseCase getLocationUseCase = GetLocationUseCase();
    return Column(
        children: [
          verticalSpace,
          SizedBox(
            height: 400,
            child: FutureBuilder<List<Map<String, dynamic>>>(
              future: getLocationUseCase.execute(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator(); // Loading indicator while fetching data.
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