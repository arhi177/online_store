import 'package:flutter/material.dart';
import 'package:online_store/auth/auth.dart';
import 'package:online_store/auth/login_register_page.dart';
import 'package:online_store/store.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().autStateChanges,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return const Store();
        } else {
          return const LoginPage();
        }
      },
    );
  }
}
