import 'package:flutter/material.dart';

import 'screens/bordered_button.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter UI Examples",
      theme: ThemeData(
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(20),
        color: Colors.grey[200],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BorderedButton(
              onPressed: () {},
              buttonPrimaryColor: Colors.deepPurple,
              buttonBorderColor: Colors.deepPurpleAccent,
              buttonChild: Text(
                "NEXT",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w100,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
