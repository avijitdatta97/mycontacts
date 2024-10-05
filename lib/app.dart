import 'package:flutter/material.dart';
import 'package:mycontacts/presentation/screens/home_screen.dart';
import 'package:mycontacts/presentation/utility/app_colors.dart';

class MyContacts extends StatefulWidget {
  const MyContacts({super.key});

  @override
  State<MyContacts> createState() => _MyContactsState();
}

class _MyContactsState extends State<MyContacts> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
      theme: ThemeData(
        colorSchemeSeed: AppColors.primaryColor,
      ),
    );
  }
}
