import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../features/settings_provider.dart';

class RegisterView extends StatelessWidget {
  static const String routeName = "register";
  var formKey = GlobalKey<FormState>();
  var FullNameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

  RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    var vm = Provider.of<SettingsProvider>(context);
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFDFECDB),
        image: DecorationImage(
          image: AssetImage("assets/images/background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            "Create Account",
            textAlign: TextAlign.center,
            style: theme.textTheme.titleLarge?.copyWith(color: Colors.white),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: mediaQuery.height * 0.2,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Full Name :",
                    style: theme.textTheme.bodySmall,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: FullNameController,
                    decoration: InputDecoration(
                      hintText: "Enter Your Full Name",
                      enabledBorder: UnderlineInputBorder(),
                      focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: theme.primaryColor, width: 2.5)),
                      suffixIcon: Icon(Icons.person),
                    ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return "You Must Enter Your Full Name";
                        }}
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "E-mail :",
                    style: theme.textTheme.bodySmall,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: "Enter Your E-mail Address",
                      enabledBorder: UnderlineInputBorder(),
                      focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: theme.primaryColor, width: 2.5)),
                      suffixIcon: Icon(Icons.email_rounded),
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "You Must Enter Your E-mail";
                      }
              
                      var regex = RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
              
                      if (!regex.hasMatch(value)) {
                        return "Invalid Email";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Password :",
                    style: theme.textTheme.bodySmall,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Your Password",
                      enabledBorder: UnderlineInputBorder(),
                      focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: theme.primaryColor, width: 2.5)),
                      suffixIcon: Icon(Icons.remove_red_eye_rounded),
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "You Must Enter Your Password";
                      }
              
                      var regex = RegExp(
                          r'^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$');
              
                      if (!regex.hasMatch(value)) {
                        return "Invalid Password";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Confirm Password :",
                    style: theme.textTheme.bodySmall,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                      controller: confirmPasswordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Your Confirm Password",
                        enabledBorder: UnderlineInputBorder(),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: theme.primaryColor, width: 2.5)),
                        suffixIcon: Icon(Icons.remove_red_eye_rounded),
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return "You Must Enter Your Password";
                        }
                        if(value != passwordController.text){
                          return "Password Not Matched";
                        }
                        return null;
                      }
                      ),
                  SizedBox(
                    height: 25,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        print("Validation Done");
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: theme.primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0))),
                    child: Row(
                      children: [
                        Text(
                          "Create Account",
                          style: theme.textTheme.bodySmall
                              ?.copyWith(color: Colors.white),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
