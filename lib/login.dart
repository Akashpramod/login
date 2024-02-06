import 'package:flutter/material.dart';
import 'package:login/home.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}


class _loginPageState extends State<loginPage> {

final TextEditingController  _usernameController = TextEditingController();
final TextEditingController _passwordController = TextEditingController();
 void _login(){
  String username = _usernameController.text;
  String password = _passwordController.text;

  print('Username: $username');
  print('password: $password');
 }



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      backgroundColor: Colors.blue,
      body: Padding(padding: EdgeInsets.all(16.0),
      child: Column(children: [TextField(
        controller: _usernameController,
        decoration: InputDecoration(hintText: 'username'),
      ),
      SizedBox(height:16.0),
      TextField(
        controller: _passwordController,
        decoration: InputDecoration(hintText: 'Password'),
      ),
      SizedBox(height: 16.0,),
      ElevatedButton(onPressed: (){Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) =>
                            const HomePage())
                     );}
      , child: Text('Login'))
      ],)
      ),
      );


  


  }
}