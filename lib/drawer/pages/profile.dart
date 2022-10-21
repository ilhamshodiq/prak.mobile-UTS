import 'package:flutter/material.dart';

import '../drawer_content.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/hitagirotate.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(top: 226, left: 12,
                child: SizedBox(height: 100, width: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Ilham Shodiq", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
                      ),
                      Text("Online"),
                    ],
                  ),
                ),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
                    child: const Text("Account"),
                  ),
                  const ListTile(
                    title: Text("+62 853 33448205"),
                    subtitle: Text("Tap to change phone number"),
                    shape: Border(
                      bottom: BorderSide(color: Colors.grey,
                        width: 0.2,
                      ),
                    ),
                  ),
                  const ListTile(
                    title: Text("@ilhamshodiq"),
                    subtitle: Text("Username"),
                    shape: Border(
                      bottom: BorderSide(
                        color: Colors.grey,
                        width: 0.2,
                      ),
                    ),
                  ),
                  const ListTile(
                    title: Text("\"wkwk 😂👌🏻\""),
                    subtitle: Text("Bio"),
                    shape: Border(
                      bottom: BorderSide(
                        color: Color.fromARGB(255, 41, 33, 58),
                        width: 10,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
                    child: const Text("Settings"),
                  ),
                  const ListTile(
                    leading: Icon(Icons.notifications_none),
                    title: Text("Notifications and Sounds"),
                    shape: Border(
                      bottom: BorderSide(
                        color: Colors.grey,
                        width: 0.2,
                      ),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(Icons.lock_outline),
                    title: Text("Privacy and Security"),
                    shape: Border(
                      bottom: BorderSide(
                        color: Colors.grey,
                        width: 0.2,
                      ),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(Icons.pie_chart_outline),
                    title: Text("Data and Storange"),
                    shape: Border(
                      bottom: BorderSide(
                        color: Colors.grey,
                        width: 0.2,
                      ),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(Icons.chat_bubble_outline),
                    title: Text("Chat Settings"),
                    shape: Border(
                      bottom: BorderSide(
                        color: Colors.grey,
                        width: 0.2,
                      ),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(Icons.emoji_emotions_outlined),
                    title: Text("Stickers and Emoji"),
                    shape: Border(
                      bottom: BorderSide(
                        color: Colors.grey,
                        width: 0.2,
                      ),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(Icons.folder_open),
                    title: Text("Chat Folders"),
                    shape: Border(
                      bottom: BorderSide(
                        color: Colors.grey,
                        width: 0.2,
                      ),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(Icons.devices_rounded),
                    title: Text("Devices"),
                    shape: Border(
                      bottom: BorderSide(
                        color: Colors.grey,
                        width: 0.2,
                      ),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(Icons.language),
                    title: Text("Language"),
                    shape: Border(bottom: BorderSide( color: Colors.grey, width: 0.2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
