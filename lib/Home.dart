import 'package:flutter/material.dart';
import 'package:outcaster/Global.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool lock_app_background = false;
  bool fingerprint = false;
  bool change_password = false;

  bool isIOS = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text(
          "Setting",
          style: TextStyle(fontSize: 18, color: Colors.white, letterSpacing: 1),
        ),
        actions: [
          Switch(
              inactiveThumbImage: NetworkImage(
                  "https://cdn-icons-png.flaticon.com/512/174/174836.png"),
              value: isIOS,
              onChanged: (val) {
                setState(() {
                  isIOS = val;
                });
              })
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10, left: 10),
                child: const Text(
                  "Common",
                  style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10, top: 10),
                child: const Icon(
                  Icons.language,
                  size: 30,
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 23, top: 5),
                    child: const Text(
                      "Language",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Container(
                    child: const Text(
                      "English",
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Divider(
            color: Colors.grey,
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10, top: 10),
                child: const Icon(
                  Icons.cloud_outlined,
                  size: 30,
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 23, top: 5),
                    child: const Text(
                      "Environment",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Container(
                    child: const Text(
                      "Production",
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10, left: 10),
                child: const Text(
                  "Account",
                  style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: const Icon(
                  Icons.call,
                  size: 30,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: const Text(
                  "Phone number",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
          const Divider(color: Colors.grey),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: const Icon(
                  Icons.mail,
                  size: 30,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: const Text(
                  "Email",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
          const Divider(
            color: Colors.grey,
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: const Icon(
                  Icons.lock,
                  size: 30,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: const Text(
                  "Sign out",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
          //const Divider(color: Colors.black),
          SizedBox(height: 10),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10, left: 10),
                child: const Text(
                  "Secutiry",
                  style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: const Icon(
                  Icons.phonelink_lock,
                  size: 30,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: const Text(
                  "Lock app in backGround",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  Switch(
                    activeColor: Colors.deepOrange,
                    value: lock_app_background,
                    onChanged: (val) {
                      setState(() {
                        lock_app_background = val;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
          Divider(color: Colors.grey),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: const Icon(
                  Icons.fingerprint,
                  size: 30,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: const Text(
                  "Use fingerprint",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  Switch(
                    activeColor: Colors.deepOrange,
                    value: fingerprint,
                    onChanged: (val) {
                      setState(() {
                        fingerprint = val;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
          Divider(color: Colors.grey),

          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: const Icon(
                  Icons.lock,
                  size: 30,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: const Text(
                  "Change password",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  Switch(
                    activeColor: Colors.deepOrange,
                    value: change_password,
                    onChanged: (val) {
                      setState(() {
                        change_password = val;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: const Text(
                  "Misc",
                  style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
