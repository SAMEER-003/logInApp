import 'package:flutter/material.dart';
import 'package:login/routes/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home"),),
      body: Center(
        child: SingleChildScrollView(
            child: Column(children: [
              const Text(
                "Welcome",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                child: const Text("Login"),
                onPressed: (){
                  Navigator.pushNamed(context, MyRoutes.loginRoute);},
                
                
              ),
              const SizedBox(
                height: 20.0,
                child: Text("or"),
              ),
              const Text("Are you new user?",
              style: TextStyle(fontSize: 20),),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.signupRoutes) ;
                },
                child: const Text("Sign up"),
              ),
            ]),
          
        ),
      ),
      drawer: Drawer(),
    );
  }
}
