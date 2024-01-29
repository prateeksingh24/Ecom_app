import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';


class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _isPasswordVisible = false;
  final _formKey = GlobalKey<FormState>();
  TextEditingController _mailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.fromLTRB(10, 50, 10, 0),
          padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Sign Up",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              const Text(
                "Please register with your email and sign up to continue using our app.",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Center(
                child: Text(
                  "Register via Social Networks",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  FlutterSocialButton(
                    onTap: () {},
                    buttonType: ButtonType.facebook,
                    mini: true,
                    // Button type for different type buttons
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  FlutterSocialButton(
                    onTap: () {},
                    buttonType: ButtonType.twitter,
                    mini: true,
                    // Button type for different type buttons
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  FlutterSocialButton(
                    onTap: () {},
                    buttonType: ButtonType.google,
                    mini: true,
                    // Button type for different type buttons
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  FlutterSocialButton(
                    onTap: () {},
                    buttonType: ButtonType.github,
                    mini: true,
                    // Button type for different type buttons
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Center(child: Text('or login with email')),
              const SizedBox(
                height: 30,
              ),
              Form(
                key: _formKey,
                child: Column(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Material(
                      elevation: 4.0,
                      borderRadius: BorderRadius.circular(10),
                      child: TextFormField(
                        controller: _mailController,
                        keyboardType: TextInputType.emailAddress,
                        validator: (text){
                          if(text == null || text.isEmpty){
                            return "Please Enter Correct Email";
                          }
                        },
                        decoration: const InputDecoration(
                          label: Text("Email",style: TextStyle(
                              color: Colors.black
                          ),),


                          border:OutlineInputBorder(),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Material(
                      elevation: 4,
                      borderRadius: BorderRadius.circular(10),
                      child: TextFormField(
                        controller: _passwordController,
                        obscureText: !_isPasswordVisible,
                        validator: (text){
                          if(text == null || text.isEmpty){
                            return "Please Enter Password";
                          }
                        },
                        decoration: InputDecoration(
                          label: Text("Password",style: TextStyle(
                              color: Colors.black
                          ),),
                          border: const OutlineInputBorder(),
                          suffixIcon: IconButton(
                            icon: Icon(_isPasswordVisible
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                _isPasswordVisible = !_isPasswordVisible;
                              });
                            },
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    //Forget Password
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forget Password?',
                          style: TextStyle(fontSize: 15,
                              color: Colors.black),
                        ),
                      ),
                    ),

                    const  SizedBox(
                      height: 50,
                    ),

                    GestureDetector(
                      onTap: (){
                        if(_formKey.currentState!.validate()){
                          Navigator.pushNamedAndRemoveUntil(context, '/shop_page', (route) => false);
                        }
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                              color: Colors.black,
                              width: 2
                          ),
                        ),
                        child: const  Text(
                          "Sign Up",style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600
                        ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Don't have an account?",style: TextStyle(
                      fontWeight: FontWeight.w500,color: Colors.black
                  ),),
                  TextButton(onPressed: (){
                    Navigator.pop(context);

                    Navigator.pushNamed(context, '/login_page');
                  }, child: Text("Login",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
