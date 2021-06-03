import 'package:flutter/material.dart';
import 'package:pokedex/screens/loading_screen.dart';

class AboutScreen extends StatefulWidget {
  AboutScreen();



  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: TextButton(
        child: Icon(
          Icons.arrow_back,
          size: 50.0,
        ),
        onPressed: () async {

          await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return LoadingScreen();
              },
              
            ),
            
          );
        },
      ),
    ));
  }
}
