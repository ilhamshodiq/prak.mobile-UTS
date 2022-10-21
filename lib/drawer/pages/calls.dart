import 'package:flutter/material.dart';

import '../drawer_content.dart';

class CallsPage extends StatelessWidget {
  const CallsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("Calls History"),
        centerTitle: true,
      ),
      drawer: const DrawerContent(),
      body: Padding(
        padding: const EdgeInsets.all(4),
        child: ListView(
          children: [
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage("images/hitagi.png"),
              ),
              title: const Text("Senjougahara Hitagi"),
              subtitle: Row(
                children: const [
                  Icon(
                    Icons.call_received,
                    color: Colors.green,
                  ),
                  Text("Yesterday, 07:34"),
                ],
              ),
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: NetworkImage("https://asset.kompas.com/crops/bzdYfkGm3H7fXaDmBLFTedTaSuU=/65x2:633x381/750x500/data/photo/2021/05/12/609ba9cac54a2.png"),
              ),
              title: const Text("Dogege"),
              subtitle: Row(children: const [
                  Icon(Icons.call_made, color: Colors.red,
                  ),
                  Text("11.10.2022 at 05:01"),
                ],
              ),
            ),
            ListTile(
              leading: const CircleAvatar(backgroundImage: NetworkImage("https://asset.kompas.com/crops/bzdYfkGm3H7fXaDmBLFTedTaSuU=/65x2:633x381/750x500/data/photo/2021/05/12/609ba9cac54a2.png"),
              ),
              title: const Text("Dogege"),
              subtitle: Row(children: const [
                  Icon(Icons.call_received, color: Colors.green,
                  ),
                  Text("01.10.2022 at 12:02"),
                ],
              ),
            ),
            ListTile(
              leading: const CircleAvatar( backgroundImage: AssetImage("images/hitagi.png"),
              ),
              title: const Text("Senjougahara Hitagi"),
              subtitle: Row(children: const [
                  Icon(
                    Icons.call_made,
                    color: Colors.red,
                  ),
                  Text("29.09.2022 at 23:00"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
