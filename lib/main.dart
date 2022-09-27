import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const Setting(),
  );
}

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool lock_app_background = false;
  bool fingerprint = false;
  bool change_password = false;

  bool lock_app_background_ios = false;
  bool fingerprint_ios = false;
  bool change_password_ios = false;

  bool isIOS = false;

  @override
  Widget build(BuildContext context) {
    return (isIOS == false)
        ? MaterialApp(
            home: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.deepOrange,
                title: const Text(
                  "Setting",
                  style: TextStyle(
                      fontSize: 18, color: Colors.white, letterSpacing: 1),
                ),
                actions: [
                  Switch(
                      inactiveThumbImage: const NetworkImage(
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
                  const SizedBox(height: 10),
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
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey),
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
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey),
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
            ),
          )
        : CupertinoApp(
            debugShowCheckedModeBanner: false,
            home: CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                middle: GestureDetector(
                  onTap: () {
                    setState(() {
                      isIOS = false;
                    });
                  },
                  child: const Text("Settings "),
                ),
                backgroundColor: CupertinoColors.destructiveRed,
              ),
              backgroundColor: Colors.grey.shade100,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Text(
                        "Common",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      height: 60,
                      child: Row(
                        children: const [
                          SizedBox(width: 10),
                          Icon(
                            Icons.language,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Language",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          Spacer(),
                          Text(
                            "English",
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      height: 60,
                      child: Row(
                        children: const [
                          SizedBox(width: 10),
                          Icon(
                            Icons.cloud_queue,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Enviroment",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          Spacer(),
                          Text(
                            "Production",
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                      child: Text(
                        "Account",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      height: 60,
                      child: Row(
                        children: const [
                          SizedBox(width: 10),
                          Icon(
                            Icons.phone,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Phone number",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      height: 60,
                      child: Row(
                        children: const [
                          SizedBox(width: 10),
                          Icon(Icons.email, color: Colors.grey),
                          SizedBox(width: 10),
                          Text(
                            "Email",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      height: 60,
                      child: Row(
                        children: const [
                          SizedBox(width: 10),
                          Icon(Icons.exit_to_app, color: Colors.grey),
                          SizedBox(width: 10),
                          Text(
                            "Sign out",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                      child: Text(
                        "Security",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      height: 60,
                      child: Row(
                        children: [
                          const SizedBox(width: 10),
                          const Icon(Icons.phonelink_lock, color: Colors.grey),
                          const SizedBox(width: 10),
                          const Text(
                            "Lock app in background",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          const Spacer(),
                          CupertinoSwitch(
                            value: lock_app_background_ios,
                            onChanged: (val) {
                              lock_app_background_ios = val;
                            },
                            activeColor: CupertinoColors.destructiveRed,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      height: 60,
                      child: Row(
                        children: [
                          const SizedBox(width: 10),
                          const Icon(Icons.fingerprint, color: Colors.grey),
                          const SizedBox(width: 10),
                          const Text(
                            "Use FingerPrint",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          const Spacer(),
                          CupertinoSwitch(
                            value: false,
                            onChanged: (val) {
                              fingerprint_ios = val;
                            },
                            activeColor: CupertinoColors.destructiveRed,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      height: 60,
                      child: Row(
                        children: [
                          const SizedBox(width: 10),
                          const Icon(Icons.lock, color: Colors.grey),
                          const SizedBox(width: 10),
                          const Text(
                            "Change Password",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          const Spacer(),
                          CupertinoSwitch(
                            value: true,
                            onChanged: (val) {
                              setState(() {
                                change_password_ios = val;
                              });
                            },
                            activeColor: CupertinoColors.destructiveRed,
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                      child: Text(
                        "Misc",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      height: 60,
                      child: Row(
                        children: const [
                          SizedBox(width: 10),
                          Icon(Icons.note_add, color: Colors.grey),
                          SizedBox(width: 10),
                          Text(
                            "Terms of service",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      height: 60,
                      child: Row(
                        children: const [
                          SizedBox(width: 10),
                          Icon(Icons.source, color: Colors.grey),
                          SizedBox(width: 10),
                          Text(
                            "Open source licenses",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
