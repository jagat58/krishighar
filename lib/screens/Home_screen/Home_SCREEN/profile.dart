import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 12, 143, 23),
      appBar: AppBar(
        title: const Text('My Profile'),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('assets/images/user.JPG'),
              ),
              const SizedBox(height: 20),
              itemProfile('Name', 'Jagat Acharya ', CupertinoIcons.person),
              const SizedBox(height: 10),
              itemProfile('Phone', '9846055775', CupertinoIcons.phone),
              const SizedBox(height: 10),
              itemProfile('Address ', 'Baglung', CupertinoIcons.location),
              const SizedBox(height: 10),
              itemProfile(
                  'Email', 'jagatacharya59@gmail.com', CupertinoIcons.mail),
              const SizedBox(height: 20),
              itemProfile('Log Out', '', Icons.exit_to_app, onTap: () {
                // Add functionality for logging out
              }),
              const SizedBox(height: 10),
              itemProfile('Rate Us', '', Icons.star, onTap: () {
                // Add functionality for rating the app
              }),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Add functionality for editing profile
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                  ),
                  child: const Text('Edit Profile'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget itemProfile(String title, String subtitle, IconData iconData,
      {VoidCallback? onTap}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 5),
              color: const Color.fromARGB(255, 102, 101, 101).withOpacity(.2),
              spreadRadius: 2,
              blurRadius: 10,
            )
          ],
        ),
        child: ListTile(
          title: Text(title),
          subtitle: Text(subtitle),
          leading: Icon(iconData),
          trailing: Icon(Icons.arrow_forward, color: Colors.grey.shade400),
          tileColor: Colors.white,
        ),
      ),
    );
  }
}
