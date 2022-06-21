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
              height: 120,
              child: DrawerHeader(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/bg.png'), fit: BoxFit.cover)),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: ((context) => Info())))
                      },
                      icon: CircleAvatar(
                        backgroundImage: AssetImage('assets/profilimage.jpeg'),
                      ),
                      iconSize: 50,
                    ),
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Le bg du 75",
                        ),
                        Text("Starfullah"),
                      ],
                    ))
                  ],
                ),
              ),
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
                  trailing: Text(
                    "14 new",
                    style: TextStyle(
                      background: Paint()
                        ..color = Colors.purpleAccent
                        ..strokeWidth = 20
                        ..strokeCap = StrokeCap.round
                        ..strokeJoin = StrokeJoin.round
                        ..style = PaintingStyle.stroke,
                      color: Colors.white,
                    ),
                  ),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  leading: const Icon(Icons.label),
                  title: const Text("Promotions"),
                  trailing: Text(
                    "99+ new",
                    style: TextStyle(
                      background: Paint()
                        ..color = Colors.greenAccent
                        ..strokeCap = StrokeCap.round
                        ..strokeJoin = StrokeJoin.round
                        ..strokeWidth = 18
                        ..style = PaintingStyle.stroke,
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
