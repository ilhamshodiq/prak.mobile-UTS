import 'package:flutter/material.dart';
import 'package:mobile_prakuts/drawer/drawer_content.dart';
import 'package:mobile_prakuts/tabs/allchats.dart';
import 'package:mobile_prakuts/tabs/contacts.dart';
import 'package:mobile_prakuts/tabs/groups.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }
  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, title: const Text("UTS Prak.Mobile"), centerTitle: true, elevation: 0,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(114),
          child: Column( crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [Text("Hello,", style: TextStyle(fontWeight: FontWeight.w300),), Text("Ilham Shodiq :)", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 24)),],
                ),
              ),
              SizedBox(height: 6),
              TabBar(controller: _tabController,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.purple,
                ),
                tabs: const <Widget>[
                  Tab(text: "All Chats"),
                  Tab(text: "Contacts"),
                  Tab(text: "Groups"),
                ],
              ),
            ],
          ),
        ),
      ),
      drawer: const DrawerContent(),
      body: TabBarView( controller: _tabController,
        children: const [
          AllchatsPage(),
          ContactschatPage(),
          GroupschatPage(),
        ],
      ),
    );
  }
}
