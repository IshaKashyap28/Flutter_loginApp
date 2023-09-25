import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Dashboard"),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(49, 87, 110, 1.0),
      ),
      body: Container(
        padding:const EdgeInsets.symmetric(vertical: 20.0,horizontal: 2.0),
        child:GridView.count(
            crossAxisCount: 2,
          padding: const EdgeInsets.all(3.0),
          children:[
            makeDashboardItems("Bookmark", Icons.bookmark),
            makeDashboardItems("Alarm Clock", Icons.alarm),
            makeDashboardItems("Settings", Icons.settings),
            makeDashboardItems("Calendar", Icons.calendar_today_outlined),
          ],
        ),
      ),
    );
  }
  Card makeDashboardItems(String title, IconData icon){
    return Card(
      elevation: 1.0,
      margin: const EdgeInsets.all(8.0),
      child: Container(
        decoration: const BoxDecoration(color:Colors.blueGrey),
        child:InkWell(
          onTap: (){},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            verticalDirection:VerticalDirection.down ,
            children:<Widget> [
              const SizedBox(height: 50.0),
              Center(
                child: Icon(
                  icon,
                  size: 40.0,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height:20.0),
              Center(
                child: Text(title,
                  style: const TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w500
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
