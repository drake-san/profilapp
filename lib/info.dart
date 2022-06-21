import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profil App"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      drawer: Drawer(
        elevation: 20,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 220,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/bg.png'), fit: BoxFit.cover),
                ),
                child: Column(
                  children: [
                    IconButton(
                      onPressed: () => {Navigator.pop(context)},
                      icon: CircleAvatar(
                        backgroundImage: AssetImage('assets/profilimage.jpeg'),
                      ),
                      iconSize: 60,
                    ),
                    Text(
                      "Le bg du 75",
                    ),
                    Text("Starfullah"),
                    Padding(padding: EdgeInsets.only(top: 40)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text("1000 Followers"),
                        const VerticalDivider(
                          color: Colors.red,
                          thickness: 5,
                        ),
                        const Text("1200 Following"),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 200),
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 10)),
              Icon(Icons.mail),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                  ),
                  Text(
                    "Email",
                    textAlign: TextAlign.left,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 5),
                  ),
                  Text("bgdu75@gmail.com"),
                ],
              )
            ],
          ),
          const Divider(),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 10)),
              Icon(Icons.smartphone),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                  ),
                  Text("Mobile"),
                  Padding(
                    padding: EdgeInsets.only(bottom: 5),
                  ),
                  Text("1234567891"),
                ],
              )
            ],
          ),
          const Divider(),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 10)),
              Icon(Icons.telegram),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                  ),
                  Text("Telegram"),
                  Padding(
                    padding: EdgeInsets.only(bottom: 5),
                  ),
                  Text("LeBG"),
                ],
              )
            ],
          ),
          const Divider(),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 10)),
              Icon(Icons.facebook),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                  ),
                  Text("Facebook"),
                  Padding(
                    padding: EdgeInsets.only(bottom: 5),
                  ),
                  Text("www.facebook.com/bgdu75"),
                ],
              )
            ],
          ),
          const Divider(),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 10)),
              Icon(Icons.flutter_dash),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                  ),
                  Text("Behance"),
                  Padding(
                    padding: EdgeInsets.only(bottom: 5),
                  ),
                  Text("www.beahnce,net/bgdu75"),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
