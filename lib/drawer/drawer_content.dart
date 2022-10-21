import 'package:flutter/material.dart';
import 'package:mobile_prakuts/drawer/pages/calls.dart';
import 'package:mobile_prakuts/drawer/pages/contact.dart';
import 'package:mobile_prakuts/drawer/pages/newgroup.dart';
import 'package:mobile_prakuts/drawer/pages/profile.dart';
import 'package:mobile_prakuts/homepage.dart';
import 'package:mobile_prakuts/loginpage.dart';

class DrawerContent extends StatelessWidget {
  const DrawerContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              otherAccountsPictures: const [
                Icon(Icons.catching_pokemon),
              ],
              onDetailsPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfilePage()));},
              decoration: const BoxDecoration(color: Colors.purple,),
              accountName: const Text("Ilham Shodiq"),
              accountEmail: const Text("Ilhambheh@gmail.com"),
              currentAccountPicture: InkWell(onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfilePage()));},
                child: const CircleAvatar(
                  backgroundImage: AssetImage("images/hitagirotate.jpg"),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage()));},
            ),
            ListTile(
              leading: const Icon(Icons.group),
              title: const Text("New Group"),
              onTap: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const NewGroupPage()));},
            ),
            ListTile(
              leading: const Icon(Icons.person_outline_outlined),
              title: const Text("Contacts"),
              onTap: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) { return const ContactPage(); }));},
            ),
            ListTile(
              leading: const Icon(Icons.call_end),
              title: const Text("Calls History"),
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                  return const CallsPage();
                }));
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Settings"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ProfilePage()));
              },
            ),
            const Divider(),
            const ListTile(
              leading: Icon(Icons.help),
              title: Text("FAQ"),
            ),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.redAccent,),
              title: const Text("Log Out"),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) =>  LoginPage()));
              },
            ),
          ],
        ));
  }
}
