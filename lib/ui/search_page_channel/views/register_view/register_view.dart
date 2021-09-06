import 'package:channel_search/ui/search_page_channel/views/login_view/login.dart';
import 'package:channel_search/ui/search_page_channel/views/register_view/register_view_model.dart';
import 'package:channel_search/ui/search_page_channel/widgets/custom_button.dart';
import 'package:channel_search/ui/search_page_channel/widgets/textfield_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RegisterViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        // ignore: avoid_unnecessary_containers
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ignore: avoid_unnecessary_containers
                Center(
                  child: Container(
                    padding: const EdgeInsets.only(top: 60, bottom: 19),
                    child: Image.asset(
                      'images/zuri_chat_logo.png',
                    ),
                  ),
                ),

                Center(
                  // ignore: avoid_unnecessary_containers
                  child: Container(
                    padding: const EdgeInsets.only(bottom: 14),
                    child: Text(
                      'Sign Up',
                      style: headerStyle(),
                    ),
                  ),
                ),

                Center(
                  // ignore: avoid_unnecessary_containers
                  child: Container(
                    padding: const EdgeInsets.only(bottom: 14),
                    child: Text(
                      'Welcome, Register Here',
                      style: nameStyle(),
                    ),
                  ),
                ),
                //TextFields

                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 19),
                  child: LoginTextField(
                    obscureText: false,
                    keyboardType: TextInputType.name,
                    hintText: 'John Doe',
                    labelText: 'Enter Username',
                  ),
                ),

                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 19),
                  child: LoginTextField(
                    obscureText: false,
                    keyboardType: TextInputType.emailAddress,
                    hintText: 'Name@gmail.com',
                    labelText: 'Enter Email',
                  ),
                ),

                Container(
                  margin: const EdgeInsets.only(
                      left: 15, right: 15, top: 15, bottom: 39),
                  child: LoginTextField(
                    obscureText: true,
                    keyboardType: TextInputType.name,
                    hintText: 'Password',
                    labelText: 'Enter Password',
                  ),
                ),

                //Buttons
                CustomButton(
                  buttontext: 'Sign Up',
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already Have an Account?',
                      style: nameStyle(),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginView()));
                        },
                        child: Text(
                          'Login.',
                          style: greenTextStyle(),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      viewModelBuilder: () => RegisterViewModel(),
    );
  }
}
