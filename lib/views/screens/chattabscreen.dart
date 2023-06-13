import 'package:midterm_asgm/models/user.dart';
import 'package:flutter/material.dart';

class ChatTabScreen extends StatefulWidget {
  final User user;
  const ChatTabScreen({super.key, required this.user});

  @override
  State<ChatTabScreen> createState() => _ChatTabScreenState();
}

class _ChatTabScreenState extends State<ChatTabScreen> {
  String maintitle = "Chat";

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
