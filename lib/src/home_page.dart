import 'package:flutter/material.dart';
import 'package:github_client/src/controllers/users_controller.dart';
import 'package:github_client/src/models/user.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  UserController controller = UserController();
  String userName = "";
  String error = "";

  @override
  Widget build(BuildContext context) {
    double sidesPadding = MediaQuery.of(context).size.width * 0.1;
    return Scaffold(
        appBar: AppBar(
          title: const Text('A Client for GitHub'),
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: sidesPadding, right: sidesPadding),
                      child: TextFormField(
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              label: Text('Username')),
                          onChanged: (value) {
                            userName = value;
                            error = "";
                            setState(() {});
                          }),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                        onPressed: () async {
                          try {
                            User user = await controller.getUser(userName);
                            controller.gotToUserPage(context, user);
                          } catch (e) {
                            error = 'User not found';
                          }
                          setState(() {});
                        },
                        child: const Text('Search')),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      error,
                      style: const TextStyle(color: Colors.red),
                    )
                  ]),
            )));
  }
}
