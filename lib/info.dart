import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:profilapp/side.dart';

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 140,
              child: Stack(children: [
                Container(
                  color: Color(0xFF3A66FD),
                  alignment: Alignment.center,
                ),
                Positioned(
                  top: -20,
                  left: 90,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFF2154FF),
                        borderRadius: BorderRadius.circular(100)),
                    width: 300,
                    height: 200,
                  ),
                ),
                Positioned(
                  top: -50,
                  right: -100,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFF093EFE),
                        borderRadius: BorderRadius.circular(100)),
                    width: 200,
                    height: 200,
                  ),
                ),
                Positioned(
                    bottom: 20,
                    left: 10,
                    child: Container(
                      child: IconButton(
                          iconSize: 70,
                          onPressed: () => {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Info()))
                              },
                          icon: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/profilimage.jpeg'),
                            radius: 50,
                          )),
                    )),
                Positioned(
                    top: 60,
                    left: 120,
                    child: Column(
                      children: [
                        Text(
                          "Le bg du 75",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 5),
                        ),
                        Text(
                          "Dev Fullstack",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        )
                      ],
                    ))
              ]),
            ),
            Expanded(
                child: ListView(
              children: [
                ListTile(
                  leading: const Icon(Icons.inbox),
                  title: const Text("All Inboxes"),
                  trailing: const Text("15"),
                  onTap: () => Navigator.pop(context),
                ),
                const Divider(),
                ListTile(
                  leading: const Icon(Icons.mail),
                  title: const Text("Primary"),
                  trailing: const Text("15"),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  leading: const Icon(Icons.group),
                  title: const Text("Social"),
                  trailing: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Text("14 new",
                        style: TextStyle(backgroundColor: Colors.purpleAccent)),
                  ),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  leading: const Icon(Icons.label),
                  title: const Text("Promotions"),
                  trailing: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Text(
                      "99+ new",
                      style: TextStyle(backgroundColor: Colors.greenAccent),
                    ),
                  ),
                  onTap: () => Navigator.pop(context),
                ),
                const Divider(),
                const Text(
                  "All labels",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.star),
                  title: const Text("Starred"),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  leading: const Icon(Icons.abc_outlined),
                  title: const Text("Important"),
                  trailing: const Text("1"),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  leading: const Icon(Icons.send),
                  title: const Text("Sent"),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  leading: const Icon(Icons.outbox),
                  title: const Text("Outbox"),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  leading: const Icon(Icons.drafts),
                  title: const Text("Drafts"),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  leading: const Icon(Icons.attach_email),
                  title: const Text("All emails"),
                  trailing: const Text("99+"),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  leading: const Icon(Icons.warning),
                  title: const Text("Spam"),
                  trailing: const Text("99+"),
                  onTap: () => Navigator.pop(context),
                ),
              ],
            ))
          ],
        ),
      ),
      body: ListView(
        children: [
          Stack(children: [
            Container(
              color: Color(0xFF093EFE),
              alignment: Alignment.center,
            ),
            Positioned(
              top: -30,
              left: -90,
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xFF093EFE),
                    borderRadius: BorderRadius.circular(100)),
                width: 500,
                height: 500,
              ),
            ),
            Positioned(
              top: -50,
              right: -100,
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xFF2154FF),
                    borderRadius: BorderRadius.circular(100)),
                width: 350,
                height: 300,
              ),
            ),
            Positioned(
              top: -50,
              right: -200,
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xFF3A66FD),
                    borderRadius: BorderRadius.circular(100)),
                width: 300,
                height: 300,
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(
                right: 20,
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        padding: EdgeInsets.only(left: 20),
                        onPressed: () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Side()))
                            },
                        icon: Icon(Icons.arrow_back, color: Colors.white)),
                    Text(
                      'Profile',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    Icon(Icons.settings, color: Colors.white),
                  ]),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  ClipOval(
                    child: Image.asset('assets/profilimage.jpeg',
                        width: 90, height: 90, fit: BoxFit.fitHeight),
                  ),
                  Padding(padding: EdgeInsets.only(top: 5)),
                  Text(
                    "Le bg du 75",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Padding(padding: EdgeInsets.only(top: 3)),
                  Text(
                    "Dev Fullstack",
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.only(top: 200),
              child: SizedBox(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "1000 Followers",
                      style: TextStyle(color: Colors.white),
                    ),
                    const VerticalDivider(
                      color: Colors.white,
                      thickness: 1,
                      width: 40,
                    ),
                    const Text(
                      "1200 Following",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            )
          ]),
          Stack(
            alignment: Alignment.centerLeft,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 10, top: 10),
                height: 50,
                child: Column(
                  children: [
                    Icon(Icons.mail),
                  ],
                ),
              ),
              Positioned(
                left: 40,
                top: 15,
                child: Text("Email"),
              ),
              Positioned(
                left: 40,
                top: 30,
                child: Container(
                  child: Column(
                    children: [
                      const Padding(padding: EdgeInsets.only(top: 3)),
                      Text("bgdu75@gmail.com")
                    ],
                  ),
                ),
              ),
            ],
          ),
          const Divider(),
          Stack(
            alignment: Alignment.centerLeft,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 10),
                height: 50,
                child: Column(
                  children: [
                    Icon(Icons.phone),
                  ],
                ),
              ),
              Positioned(
                left: 40,
                top: 5,
                child: Text("Mobile"),
              ),
              Positioned(
                left: 40,
                top: 20,
                child: Container(
                  child: Column(
                    children: [
                      const Padding(padding: EdgeInsets.only(top: 3)),
                      Text("12346567890")
                    ],
                  ),
                ),
              ),
            ],
          ),
          const Divider(),
          Stack(
            alignment: Alignment.centerLeft,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 10),
                height: 50,
                child: Column(
                  children: [
                    Icon(Icons.telegram),
                  ],
                ),
              ),
              Positioned(
                left: 40,
                top: 5,
                child: Text("Telegram"),
              ),
              Positioned(
                left: 40,
                top: 20,
                child: Container(
                  child: Column(
                    children: [
                      const Padding(padding: EdgeInsets.only(top: 3)),
                      Text("@bgdu75")
                    ],
                  ),
                ),
              ),
            ],
          ),
          const Divider(),
          Stack(
            alignment: Alignment.centerLeft,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 10),
                height: 50,
                child: Column(
                  children: [
                    Icon(Icons.facebook),
                  ],
                ),
              ),
              Positioned(
                left: 40,
                top: 5,
                child: Text("Facebook"),
              ),
              Positioned(
                left: 40,
                top: 15,
                child: Container(
                  child: Column(
                    children: [
                      const Padding(padding: EdgeInsets.only(top: 3)),
                      Text("www.facebook.com/bgdu75")
                    ],
                  ),
                ),
              ),
            ],
          ),
          const Divider(),
          Stack(
            alignment: Alignment.centerLeft,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 10),
                height: 50,
                child: Column(
                  children: [
                    Icon(Icons.flutter_dash),
                  ],
                ),
              ),
              Positioned(
                left: 40,
                top: 5,
                child: Text("Behance"),
              ),
              Positioned(
                left: 40,
                top: 15,
                child: Container(
                  child: Column(
                    children: [
                      const Padding(padding: EdgeInsets.only(top: 3)),
                      Text("www.behance.net/bgdu75")
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;
    double offset = 100.0;
    Path path = Path();
    path.lineTo(height + 500, 0);
    path.lineTo(height + 500, width);
    path.lineTo(0, width);
    path.quadraticBezierTo(offset, width / 2, 0, 0);
    path.lineTo(width + 500, 0);
    path.close();
    return path;
  }
}
