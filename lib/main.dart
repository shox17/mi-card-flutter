import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

//stless-Stateless Widget, is used to trigger hot reload and hot restart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(// SafeArea is used to avoid intrusions
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/shoxa.JPG') ,
              ),
              Text('Shoxa',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('Flutter Developer',
                style: TextStyle(
                  fontFamily: 'SourceSans3',// fonts.google.com
                  fontSize: 20.0,
                  color: Colors.white60,
                  letterSpacing: 2.5, // space between letters
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(//a thin horizontal line with padding
                  color: Colors.white60,
                ),
              ),
              Card(// a panel with rounded corners and elevation shadow
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                color: Colors.white,
                child: ListTile(//helps to list the widgets in a order with padding
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  title: Text('+82 10 5698 0844',
                    style: TextStyle(
                      color: Colors.teal,
                      fontFamily: 'SourceSans3',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text('uzbek7580@gmail.com',
                    style: TextStyle(
                      color: Colors.teal,
                      fontFamily: 'SourceSans3',
                      fontSize: 20.0,
                    ),
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
