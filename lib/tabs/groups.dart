import 'package:flutter/material.dart';

class GroupschatPage extends StatelessWidget {
  const GroupschatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(4.0),
      child: ListView(
        children: [
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage("images/imagesetc/flutter.jpg"),
            ),
            title: const Text("Flutter Indonesia"),
            subtitle: const Text("Zai: Terima kasih infonya kak🙏🏻"),
            trailing: Padding(
              padding: const EdgeInsets.only(top: 6.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text("15:44", style: TextStyle(fontSize: 12)),
                  const SizedBox(
                    height: 4,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child:const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('6096',style: TextStyle(fontSize: 12,color: Colors.white),),
                    ),
                  )
                ],
              ),
            ),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage("images/imagesetc/juaraandroid.jpg"),
            ),
            title: const Text("Juara Android"),
            subtitle: const Text("Clara: Info swag"),
            trailing: Padding(
              padding: const EdgeInsets.only(top: 6.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text("14:00", style: TextStyle(fontSize: 12)),
                  const SizedBox(
                    height: 4,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child:const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('41',style: TextStyle(fontSize: 12,color: Colors.white),),
                    ),
                  )
                ],
              ),
            ),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage("https://www.thesun.co.uk/wp-content/uploads/2021/12/T47RA3jpg-JS697296146.jpg?strip=all&w=960"),
            ),
            title: const Text("Ini Grup Keluarga"),
            subtitle: const Text("Om tom: Santuy"),
            trailing: Padding(
              padding: const EdgeInsets.only(top: 6.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text("12:51", style: TextStyle(fontSize: 12)),
                  const SizedBox(
                    height: 4,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child:const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('210',style: TextStyle(fontSize: 12,color: Colors.white),),
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
