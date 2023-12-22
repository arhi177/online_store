import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:online_store/auth/auth.dart';

class Store extends StatefulWidget {
  const Store({super.key});

  @override
  State<Store> createState() => _StoreState();
}

final User? user = Auth().currentUser;

Future<void> signOut() async {
  Auth();
}

Widget _title() {
  return const Text('firebase');
}

Widget _userId() {
  return Text(user?.email ?? 'user email');
}

Widget _signOutButton() {
  return const ElevatedButton(onPressed: signOut, child: Text('sign out'));
}

class _StoreState extends State<Store> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _title(),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[_userId(), _signOutButton()],
        ),
      ),
    );
  }
}
