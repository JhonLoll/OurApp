import 'package:flutter/material.dart';
import 'package:ourapp/pages/signup.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {

  void _signupaction(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => Signup()));
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
                "Signin",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Por favor, entre para continuar",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                )
              ),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.email),
                  labelText: "Email",
                  border: InputBorder.none,
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.lock),
                  labelText: "Senha",
                  border: InputBorder.none
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: (){}, 
                    child: Row(
                      children: [
                        Text(
                          "Sign in",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 10,),
                        Icon(
                          Icons.arrow_forward_ios,
                        )
                      ],
                    )
                  )
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Não tem uma conta?"),
                  TextButton(
                    onPressed: _signupaction,
                    child: Text(
                      "Cadastre-se",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  )
                ]
              )      
            ],
          ),
        )
      )
    );
  }
}