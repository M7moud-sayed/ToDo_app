import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/register/pages/register_view.dart';

import '../../settings_provider.dart';

class LoginView extends StatelessWidget {
  static const String routeName = "login";

  const LoginView({super.key});

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
            "Login",
            textAlign: TextAlign.center,
            style: theme.textTheme.titleLarge?.copyWith(color: Colors.white),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: mediaQuery.height * 0.2,
              ),
              Text(
                "Welcome Back!",
                textAlign: TextAlign.start,
                style: theme.textTheme.bodyLarge
                    ?.copyWith(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                "E-mail :",
                style: theme.textTheme.bodySmall,
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Your E-mail Address",
                  enabledBorder: UnderlineInputBorder(),
                  focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: theme.primaryColor, width: 2.5)),
                  suffixIcon: Icon(Icons.email_rounded),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Password :",
                style: theme.textTheme.bodySmall,
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter Your Password",
                  enabledBorder: UnderlineInputBorder(),
                  focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: theme.primaryColor, width: 2.5)),
                  suffixIcon: Icon(Icons.remove_red_eye_rounded),
                ),
              ),
              SizedBox(height: 40,),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: theme.primaryColor,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0))
                ),
                child: Row(
                  children: [
                    Text(
                      "Login",
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

              SizedBox(height: 30,),

              Text("OR",style: theme.textTheme.bodyMedium,textAlign: TextAlign.center,),
              TextButton(onPressed: () {
                Navigator.pushNamed(context, RegisterView.routeName);
              },
              child: Text("Create New Account !",style: theme.textTheme.bodyMedium?.copyWith(fontSize: 20 ,fontWeight:FontWeight.bold),textAlign: TextAlign.center,)),
            ],
          ),
        ),
      ),
    );
  }
}
