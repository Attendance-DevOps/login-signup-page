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
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController instituteNameController = TextEditingController();

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
            controller: firstNameController,
            decoration: InputDecoration(
                hintText: "First Name", labelText: "First Name"),
          ),
          TextFormField(
            controller: lastNameController,
            decoration:
                InputDecoration(hintText: "Last Name", labelText: "Last Name"),
          ),
          TextFormField(
            controller: emailController,
            decoration: InputDecoration(hintText: "Email", labelText: "Email"),
          ),
          TextFormField(
            controller: phoneNumberController,
            decoration: InputDecoration(
                hintText: "Phone Number", labelText: "Phone Number"),
          ),
          TextFormField(
            controller: instituteNameController,
            decoration: InputDecoration(
                hintText: "Institute Name", labelText: "Institute Name"),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(onPressed: () {}, child: Text("Submit")),
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
                Text("Already have an acount? "),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Login In",
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
