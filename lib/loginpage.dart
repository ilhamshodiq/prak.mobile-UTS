import 'package:flutter/material.dart';
import 'package:mobile_prakuts/homepage.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: const EdgeInsets.all(18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container( height: 60, padding: const EdgeInsets.all(8), decoration: BoxDecoration( border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                decoration: const InputDecoration(hintText: "Username", icon: Icon(Icons.person), border: InputBorder.none),
              ),
            ),
            const SizedBox(height: 20),
            Container(height: 60, padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(border: Border.all(color: Colors.white), borderRadius: BorderRadius.circular(10)),
              child: TextFormField(obscureText: true, decoration: const InputDecoration( hintText: "Password", icon: Icon(Icons.password),
               border: InputBorder.none),
              ),
            ),
            const SizedBox(height: 20),
            InkWell(onTap: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage()));},
              child: Container( alignment: Alignment.center, height: 60, width: 180, decoration: BoxDecoration(color: Colors.purpleAccent,
              borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.all(8),
                child: const Text("Login"),
              ),
            ),
            const SizedBox(height: 20),
            InkWell(onTap: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage()));},
              child: Container( alignment: Alignment.center, height: 60, width: 400,
                decoration: BoxDecoration( color: Colors.blueAccent, borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.all(8),
                child: Row( mainAxisAlignment: MainAxisAlignment.center,
                  children: const [ Icon(Icons.facebook), SizedBox(width: 10), Text("Login Facebook"), ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            InkWell( onTap: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage())); },
              child: Container(alignment: Alignment.center,height: 60,width: 400,decoration: BoxDecoration(color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.all(8),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: const [Icon(Icons.mail),SizedBox(width: 10),Text("Login Email"),],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
