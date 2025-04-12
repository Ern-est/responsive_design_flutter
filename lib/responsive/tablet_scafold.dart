import 'package:flutter/material.dart';
import 'package:responsive_designs/constants.dart';
import 'package:responsive_designs/util/my_box.dart';
import 'package:responsive_designs/util/my_tile.dart';

class TabletScafold extends StatefulWidget {
  const TabletScafold({super.key});

  @override
  State<TabletScafold> createState() => _TabletScafoldState();
}

class _TabletScafoldState extends State<TabletScafold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBackground,
      appBar: myAppBar,
      drawer: myDrawer,
      body: Column(
        children: [
          //4 box on the top
          AspectRatio(
            aspectRatio: 4,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
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
