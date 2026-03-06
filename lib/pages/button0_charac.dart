import 'package:flutter/material.dart';

class CharacCustPage extends StatefulWidget {
  const CharacCustPage({super.key});

  @override
  State<CharacCustPage> createState() => _CharacCustPageState();
}

class _CharacCustPageState extends State<CharacCustPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.black,
       
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0.0,
          
          // Back Arrow
          leadingWidth: 70,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.lightBlueAccent, 
                  width: 1,            
                ),
              ),
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                ),
            ),
          ),
        ),

        body: Center(
          child: Text('CHARACTER CUSTOMIZATION AAAAAAAA',
          style: TextStyle(
            fontSize: 25,
          )
          ),
        )
    );
  }
}