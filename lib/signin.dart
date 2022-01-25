import 'package:flutter/material.dart';
import 'signup.dart';
import 'widgets/custom_checkbox.dart';
import 'widgets/primary_button.dart';
import 'theme.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool passwordVisible = false;
  void togglePassword() {
    setState(() {
      passwordVisible = !passwordVisible;
    });
  }

  final _formKey = GlobalKey<FormState>();
  var c1;
  var c2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Collecte des Déchets')),
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(24.0, 40.0, 24.0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login to your\naccount',
                    style: heading2.copyWith(color: textBlack),
                  ),
                ],
              ),
              SizedBox(
                height: 48,
              ),
              Form(
                  key: _formKey,
                  child: Container(
                    margin: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Enter your Name',
                              label: Text('Name'),
                            ),
                            validator: (value) {
                              //on récupère la valeur saisie
                              c1 = value;
                              if (value == null)
                                return 'Please enter your Name';
                              else {
                                if (c1.length >= 3)
                                  return null;
                                else
                                  return 'Password with at least 3 caract';
                              }
                            }),
                        TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'Enter your password',
                              label: Text('Password'),
                            ),
                            validator: (value) {
                              //on récupère la valeur saisie
                              c2 = value;
                              if (value == null)
                                return 'Please enter your password';
                              else {
                                if (c2.length >= 3)
                                  return null;
                                else
                                  return 'Password with at least 3 caract';
                              }
                            }),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 32,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
// If the form is valid, display a snackbar. In the real world,
// you'd often call a server or save the information in a database.
                                  if (c1 == 'istic' && c2 == '5555')
                                    Navigator.pushNamed(context, '/buttons');
                                  else
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content: Text(
                                              'Email and/or password incorrect')),
                                    );
                                }
                              },
                              child: const Text('Connexion'),
                            )
                          ],
                        )
                      ],
                    ),
                  )),
              SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomCheckbox(),
                  SizedBox(
                    width: 12,
                  ),
                  Text('Remember me', style: regular16pt),
                ],
              ),
              SizedBox(
                height: 32,
              ),
              SizedBox(
                height: 24,
              ),
              Center(
                child: Text(
                  'OR',
                  style: heading6.copyWith(color: textGrey),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              CustomPrimaryButton(
                buttonColor: Color(0xfffbfbfb),
                textValue: 'Login with Google',
                textColor: textBlack,
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: regular16pt.copyWith(color: textGrey),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    child: Text(
                      'Register',
                      style: regular16pt.copyWith(color: primaryBlue),
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
