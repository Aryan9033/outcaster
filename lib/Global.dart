import 'package:flutter/material.dart';

class Global {
  static List<Map> Common = [
    {
      'icon': Icon(Icons.language),
      'title': "Language",
      'subtitle': "English",
    },
    {
      'icon': Icon(Icons.cloud_outlined),
      'title': "Environment",
      'subtitle': "Production",
    }
  ];
  static List<Map> Account = [
    {
      'icon': Icon(Icons.call),
      'title': 'Phone number',
    },
    {
      'icon': Icon(Icons.email),
      'title': 'Email',
    },
    {
      'icon': Icon(Icons.logout),
      'title': 'Sign out',
    }
  ];
}
