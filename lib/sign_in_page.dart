import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
} 

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      // ),
      home: const SignInPage(),
    );
  }
}

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key, this.title = 'default title'}) : super(key: key);
  final String title;

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  late final TextEditingController _passwordTextField;
  late final TextEditingController _emailTextField;

  @override
  void initState(){
    _emailTextField = TextEditingController();
    _passwordTextField = TextEditingController();
    super.initState();
  }
  @override
  void dispose(){
    _emailTextField.dispose();
    _passwordTextField.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          TextField(
            controller: _emailTextField,
            decoration: const InputDecoration(
              hintText: "email",
            ),
            keyboardType: TextInputType.emailAddress,
          ),
          TextField(
            controller: _passwordTextField,
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            decoration: const InputDecoration(
              hintText: "your password goes here",
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.all(30),
            child: ElevatedButton(
              onPressed: () async{
                final enteredEmail = _emailTextField.text;
                final enteredPassword = _passwordTextField.text;
                try {
                  final userCredential  = await FirebaseAuth.instance.signInWithEmailAndPassword(
                  email: enteredEmail,
                  password: enteredPassword
                );
                }
                on FirebaseAuthException catch (e) {
                  print(e.code);
                  switch (e.code) {
                    case "user-not-found":
                      print("not a user");
                      break;
                    case "wrong-password":
                      print("forgot password");
                      print(enteredPassword);
                      break;
                    default:
                      print("hmmm... something's wrong but I don't know what");
                  }
                }
              },
              
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(200, 132, 82, 178),
                side: const BorderSide(
                  width: 3,
                  color: Color.fromARGB(96, 215, 45, 45),
                  style: BorderStyle.none,
                ),
                elevation: 20,
                shadowColor: Colors.greenAccent.shade200,
              ),
              child: const Text("Sign in"),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'go',
        child: const Icon(Icons.keyboard_arrow_right),
      ), 
    );
  }
}