import 'package:flutter/material.dart';

class ContactschatPage extends StatelessWidget {
  const ContactschatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ListView(
        children: [
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage("images/hitagi.png"),
            ),
            title: const Text("Senjougahara Hitagi"),
            subtitle: const Text("Kirimin dulu filenya lah"),
            trailing: Padding(
              padding: const EdgeInsets.only(top: 6.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text("21:01", style: TextStyle(fontSize: 12)),
                  const SizedBox(
                    height: 4,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(30)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '12',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://asset.kompas.com/crops/bzdYfkGm3H7fXaDmBLFTedTaSuU=/65x2:633x381/750x500/data/photo/2021/05/12/609ba9cac54a2.png"),
            ),
            title: const Text("Dogege"),
            subtitle: const Text("Woof"),
            trailing: Padding(
              padding: const EdgeInsets.only(top: 6.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text("Oct 14", style: TextStyle(fontSize: 12)),
                  const SizedBox(
                    height: 4,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(30)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '54',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://i.kym-cdn.com/entries/icons/original/000/032/558/temp6.jpg"),
            ),
            title: const Text("Linus Seeb"),
            subtitle: const Text("oi"),
            trailing: Padding(
              padding: const EdgeInsets.only(top: 6.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text("Oct 12", style: TextStyle(fontSize: 12)),
                  const SizedBox(
                    height: 4,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(30)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '1',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
