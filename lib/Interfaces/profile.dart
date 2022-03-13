import 'package:flutter/material.dart';
import 'package:iac_project/Widgets/parts.dart';
import 'package:iac_project/models.dart';
import '../Widgets/tapped.dart';

class Profile extends StatefulWidget {
  final UserModel user;
  const Profile({Key? key, required this.user}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffbd2005),
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.white, fontSize: 23),
        ),
      ),
      bottomNavigationBar: const BotBar(i: 4),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left:20,bottom: 15),
              child: Row(
                children: [
                  const Text(
                      "NAME : ",
                      style: TextStyle(
                        color: Color(0xffbd2005),
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "${widget.user.name[0].toUpperCase()}${widget.user.name.substring(1)}",
                      style: const TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 21,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                ],
              ),
            ),
              Padding(
                padding: const EdgeInsets.only(left:20,bottom: 15),
                child: Row(
                  children: [
                    const Text(
                      "EMAIL : ",
                      style: TextStyle(
                        color: Color(0xffbd2005),
                        fontSize: 21,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      widget.user.email,
                      style: const TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:20,bottom:15),
                child: Row(
                  children: [
                    const Text(
                      "PHONE NUMBER : ",
                      style: TextStyle(
                        color: Color(0xffbd2005),
                        fontSize: 21,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      widget.user.phone!,
                      style: const TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              const ProfileButton(
                name: "Change Password", role: "/forgot_password", icon: Icons.password),
            const ProfileButton(
                name: "My Addresses", role: "/address", icon: Icons.location_on),
            const ProfileButton(
                name: "Settings", role: "/settings", icon: Icons.settings_sharp),
            const ProfileButton(
                name: "Help & FAQ", role: "/help", icon: Icons.help_rounded),
          ],
        ),
      ),
    );
  }
}
