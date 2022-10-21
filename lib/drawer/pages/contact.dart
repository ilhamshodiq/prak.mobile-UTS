import 'package:flutter/material.dart';

import '../drawer_content.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("Contacts"),
        centerTitle: true,
        elevation: 0,
      ),
      drawer: const DrawerContent(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            const ListTile(
              leading: Icon(Icons.person_add),
              title: Text("Invite Friends"),
            ),
            const ListTile(
              leading: Icon(Icons.location_on),
              title: Text("Search by Location"),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text(
                "Sorted by last seen time",
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("images/hitagi.png"),
              ),
              title: Text("Senjougahara Hitagi"),
              subtitle: Text("Last seen 07:34"),
            ),
            const ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://i.kym-cdn.com/entries/icons/original/000/032/558/temp6.jpg"),
              ),
              title: Text("Linus Seeeb"),
              subtitle: Text("Last seen 06:12"),
            ),
            const ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://upload.wikimedia.org/wikipedia/id/2/2f/Asukka13.jpg"),
              ),
              title: Text("ASUka langley"),
              subtitle: Text("Last seen yesterday at 22:20"),
            ),
            const ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://asset.kompas.com/crops/bzdYfkGm3H7fXaDmBLFTedTaSuU=/65x2:633x381/750x500/data/photo/2021/05/12/609ba9cac54a2.png"),
              ),
              title: Text("Dogege"),
              subtitle: Text("Last seen yesterday at 19:01"),
            ),
            const ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/8/81/Natalie_Dormer_by_Gage_Skidmore_2.jpg/330px-Natalie_Dormer_by_Gage_Skidmore_2.jpg"),
              ),
              title: Text("Natalie Dormer"),
              subtitle: Text("Last seen yesterday at 17.55"),
            ),
            const ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.saymedia-content.com/.image/c_limit%2Ccs_srgb%2Cq_auto:eco%2Cw_750/MTczOTM5NzMzODQyMzcxNjQ4/guts-a-berserk-character-analysis.webp"),
              ),
              title: Text("Depressed GUTS"),
              subtitle: Text("Last seen 3 years ago"),
            ),
            const ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage("https://www.gramedia.com/blog/content/images/2021/03/5cae3e24d4206005f509a87a.png"),
              ),
              title: Text("Da vinki?"),
              subtitle: Text("Last seen more than a decade"),
            ),
          ],
        ),
      ),
    );
  }
}
