import 'package:flutter/material.dart';
import 'package:midterm_asgm/models/user.dart';
import 'package:midterm_asgm/views/screens/loginscreen.dart';
import 'package:midterm_asgm/views/screens/registrationscreen.dart';

// for account screen

class AccountTabScreen extends StatefulWidget {
  final User user;

  const AccountTabScreen({super.key, required this.user});

  @override
  State<AccountTabScreen> createState() => _AccountTabScreenState();
}

class _AccountTabScreenState extends State<AccountTabScreen> {
  late List<Widget> tabchildren;
  String maintitle = "Account";
  late double screenHeight, screenWidth, cardwitdh;
  @override
  void initState() {
    super.initState();
    print("Account");
  }

  @override
  void dispose() {
    super.dispose();
    print("dispose");
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(maintitle),
      ),
      body: Center(
        child: Column(children: [
          Container(
            padding: const EdgeInsets.all(8),
            height: screenHeight * 0.25,
            width: screenWidth,
            child: Card(
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  margin: EdgeInsets.all(10),
                  width: screenWidth * 0.3,
                  child: Image.asset(
                    "assets/images/acc.jpeg",
                  ),
                ),
                Expanded(
                    flex: 6,
                    child: Column(
                      children: [
                        Text(
                          widget.user.name.toString(),
                          style: const TextStyle(fontSize: 24),
                        ),
                        Text(widget.user.id.toString()),
                        Text(widget.user.email.toString()),
                        Text(widget.user.phone.toString()),
                        Text("Since ${widget.user.datereg.toString()}"),
                      ],
                    )),
              ]),
            ),
          ),
          Container(
            width: screenWidth,
            alignment: Alignment.center,
            color: Theme.of(context).colorScheme.background,
            child: const Padding(
              padding: EdgeInsets.fromLTRB(0, 2, 0, 2),
              child: Text("ACCOUNT SETTINGS",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ),
          Expanded(
              child: ListView(
            children: [
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (content) => const LoginScreen()));
                },
                child: const Text("LOGIN"),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (content) => const RegistrationScreen()));
                },
                child: const Text("REGISTRATION"),
              ),
            ],
          ))
        ]),
      ),
    );
  }
}
