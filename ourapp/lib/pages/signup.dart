import 'package:flutter/material.dart';
import 'package:ourapp/pages/signin.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  void _signupaction() {
    print("Signup");
    Navigator.push(context, MaterialPageRoute(builder: (context) => Signin()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: [
              Text(
                "Sign Up",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  labelText: "Nome Completo",
                  border: InputBorder.none,
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.email),
                  labelText: "Email",
                  border: InputBorder.none,
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.lock_open_rounded),
                  labelText: "Senha",
                  border: InputBorder.none,
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.lock_open_rounded),
                  labelText: "Confirmar Senha",
                  border: InputBorder.none,
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: _signupaction,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Já tem uma conta?"),
                  TextButton(
                    onPressed: _signupaction,
                    child: Text(
                      "Faça Login",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
