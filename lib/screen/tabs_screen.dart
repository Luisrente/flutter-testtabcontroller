import 'package:flutter/material.dart';

class TabsScreen extends StatelessWidget {
   
  const TabsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:4,
      child: Scaffold(
        body: SafeArea(
          child: Column(
             children: const [
                TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  tabs:[
                  Tab(text: 'Tab1',),
                  Tab(text: 'Tab2',),
                  Tab(text: 'Tab3',),
                  Tab(text: 'Tab4',)
                ]),
                Expanded(
                  child: TabBarView(
                    children:[
                    Icon(Icons.directions_car),
                    Icon(Icons.directions_bike),
                    Icon(Icons.directions_boat),
                    Icon(Icons.directions_boat_filled_outlined),
                    ]
                  ),
                )
               ],
          ),
        ),
      ),
    );
  }
}