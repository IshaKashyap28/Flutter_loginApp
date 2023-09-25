import 'package:flutter/material.dart';
import 'package:flutter_loginpage/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyApp"),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(49, 87, 110, 1.0),
      ),
      body:const LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController= TextEditingController();
  TextEditingController passwordController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Welcome",
            style: TextStyle(
                color: Colors.black87,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
            ),
          ),
         const Text("Login to your account",
            style:TextStyle(
                color:Colors.black,
                fontSize: 35.0,
                fontWeight: FontWeight.bold
            ),
          ),
          const SizedBox(
            height: 44.0,
          ),
          const TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: "User Email",
              prefixIcon: Icon(Icons.mail,color: Colors.black),
            ),
          ),
         const SizedBox(
            height: 26.0,
          ),
         const TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "User Password",
              prefixIcon: Icon(Icons.lock,color: Colors.black),
            ),
          ),
         const SizedBox(height: 8.0),
         const Text("Forgot Password?",
            style: TextStyle(
                color: Colors.blue
            ),
          ),
          const SizedBox(height: 40.0),
          Container(
            width:double.infinity,
            child:RawMaterialButton(
              fillColor: Colors.blueGrey,
              elevation: 0.0,
              shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context)=>const HomeScreen()
                    )
                );
              },
              child:const Text("Login",style: TextStyle(
                  color:Colors.white,
                  fontSize: 18.0
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}
