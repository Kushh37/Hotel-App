import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hotel_app/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name="";
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState.validate()) {
      setState(() {
      });

      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset("assets/images/chef1.png",
                fit: BoxFit.cover,
                height:200),
              SizedBox(
                height: 20,
              ),
              Text("Welcome",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(

                        border: OutlineInputBorder(),
                        hintText: "Enter Username",
                        labelText: "Username",
                      ),
                      validator: (value) {
                        if (value.isEmpty){
                          return "Username Cannot be Empty.";
                        }
                        return null;
                      },
                      onChanged: (value){
                        name=value;
                        setState(() { });
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                      validator: (value){
                        if (value.isEmpty){
                          return "Username Cannot be Empty.";
                        }
                        else if (value.length<6){
                          return "Password must have atleast 6 Characters.";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.deepPurple,
                      child: InkWell(
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: 150,
                          height: 50,
                          alignment: Alignment.center,
                          child:
                          Text(
                            "Login",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    )


                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
