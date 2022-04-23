import 'package:flutter/material.dart';

class Profile extends StatefulWidget {

  static const String id = "/user_page";

  const Profile({Key? key}) : super(key: key);
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 64,
              backgroundColor: Colors.blueGrey.shade700,
              backgroundImage: const AssetImage("assets/images/my_pic.jpg"),
            ),

            const SizedBox(
              height: 16,
            ),

            const Text("Shavkatov Mahsudbek", style: const TextStyle(fontSize: 20, ),),
            const SizedBox(
              height: 16,
            ),

            MaterialButton(
              height: 50,
              minWidth: MediaQuery.of(context).size.width - 32,
              onPressed: (){},
              child: Text("Xabar".toUpperCase(),),
              color: Colors.white,
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: const BorderSide(
                  width: 1.5,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
