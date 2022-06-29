import 'package:flutter/material.dart';
import 'package:profilapp/info.dart';

class Side extends StatefulWidget {
  const Side({Key? key}) : super(key: key);

  @override
  State<Side> createState() => _SideState();
}

class _SideState extends State<Side> {
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
    );
  }
}
