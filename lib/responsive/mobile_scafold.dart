import 'package:flutter/material.dart';
import 'package:responsive_designs/constants.dart';
import 'package:responsive_designs/util/my_box.dart';
import 'package:responsive_designs/util/my_tile.dart';

class MobileScafold extends StatefulWidget {
  const MobileScafold({super.key});

  @override
  State<MobileScafold> createState() => _MobileScafoldState();
}

class _MobileScafoldState extends State<MobileScafold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: myDefaultBackground,
      drawer: myDrawer,
      body: Column(
        children: [
          //4 box on the top
          AspectRatio(
            aspectRatio: 1,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  return MyBox();
                },
              ),
            ),
          ),

          //tile below it
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return MyTile();
              },
            ),
          ),
        ],
      ),
    );
  }
}
