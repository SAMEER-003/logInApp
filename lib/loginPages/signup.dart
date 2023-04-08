import 'package:flutter/material.dart';
import 'package:login/routes/routes.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign up"),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Name", labelText: "Name"),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Username", labelText: "Username"),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Gmail", labelText: "Gmail"),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Create New Password",
                        labelText: "New Password"),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Re-Password",
                        labelText: "Re-Password"),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Container(
                        child: AlertDialog(
                          title: Text("You have Signed up Successfully!!"),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text("ok")),
                          ],
                        ),
                      );
                    });
              },
              child: Text("Sign up"),
            ),
          ],
        ),
      ),
    );
  }
}
