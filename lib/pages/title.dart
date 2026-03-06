import 'package:astroknows/pages/button0_charac.dart';
import 'package:astroknows/pages/button1_mainmenu.dart';
import 'package:astroknows/pages/button2_shop.dart';
import 'package:astroknows/pages/button3_settings.dart';
import 'package:flutter/material.dart';



class TitlePage extends StatefulWidget {
  const TitlePage({super.key});

  @override
  State<TitlePage> createState() => _TitlePageState();
}

class _TitlePageState extends State<TitlePage> {
  int star = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.black,

        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0.0, //removes shadow of the appBar


          // Character Customization Buttonaa
          leading: GestureDetector(
            onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CharacCustPage())
                  );
            },
          child: Container(
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100)
              ),
            ),
          ),
        ),


        // Game/App Title
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Text(
                'ASTROKNOWS',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 80,
                ),
              ),
            ),

            //Button 1
            SizedBox(height: 20), //distance from title
            SizedBox(
              height: 50,
              width: 250,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainMenuPage())
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    ),
                ),
              child: Text (
                'Launch Off',
                style: TextStyle(
                  fontSize: 23,
                )
                ),
              ),
              ),


            //Button 2
            SizedBox(height: 15), //distance from Launch Off
            SizedBox(
              height: 50,
              width: 250,
              child: ElevatedButton(
                onPressed: () async {
                final result = await
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ShopPage(star : star))
                  );

                  if (result != null) {
                    setState(() {
                      star = result;
                    });
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey.shade900,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    ),
                ),
              child: Text (
                'Shop',
                style: TextStyle(
                  fontSize: 23,
                )
                ),
              ),
              ),

            //Button 3
            SizedBox(height: 20), //distance from Shop
            SizedBox(
              height: 50,
              width: 250,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SettingsPage())
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey.shade900,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    ),
                ),
              child: Text (
                'Settings',
                style: TextStyle(
                  fontSize: 23,
                )
                ),
              ),
              ),

          ],
        )
        );
  }
}

