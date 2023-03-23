import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  MyHomePage({super.key, required this.title});

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            controller: emailController,
            decoration: InputDecoration(hintText: "Email", labelText: "Email"),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter product name';
              }
              return null;
            },
          ),
          TextFormField(
            controller: passwordController,
            decoration:
                InputDecoration(hintText: "Password", labelText: "Password"),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter product name';
              }
              return null;
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot Password",
                    textAlign: TextAlign.right,
                  )),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(onPressed: () {}, child: Text("Login")),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.facebook)),
              IconButton(onPressed: () {}, icon: Icon(Icons.apple)),
              IconButton(onPressed: () {}, icon: Icon(Icons.abc)),
            ],
          ),
          Container(
            width: size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an acount? "),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.blue),
                    ))
              ],
            ),
          )
        ],
      )),
    );
  }
}
//
