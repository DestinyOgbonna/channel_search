import 'package:channel_search/ui/search_page_channel/views/forgot_password/forgotpassword_view.dart';
import 'package:channel_search/ui/search_page_channel/views/login_view/login_view_model.dart';
import 'package:channel_search/ui/search_page_channel/views/register_view/register_view.dart';
import 'package:channel_search/ui/search_page_channel/widgets/custom_button.dart';
import 'package:channel_search/ui/search_page_channel/widgets/textfield_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
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
                      'Sign In',
                      style: headerStyle(),
                    ),
                  ),
                ),

                Center(
                  // ignore: avoid_unnecessary_containers
                  child: Container(
                    padding: const EdgeInsets.only(bottom: 14),
                    child: Text(
                      'Welcome!, sign in to continue.',
                      style: nameStyle(),
                    ),
                  ),
                ),
                //TextFields
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 39),
                  child: LoginTextField(
                    obscureText: false,
                    keyboardType: TextInputType.emailAddress,
                    hintText: 'Name@gmail.com',
                    labelText: 'Email',
                  ),
                ),

                Container(
                  margin: const EdgeInsets.only(left: 15, right: 15),
                  child: LoginTextField(
                    obscureText: true,
                    keyboardType: TextInputType.name,
                    hintText: 'Password',
                    labelText: 'Password',
                  ),
                ),

                Container(
                  alignment: Alignment.bottomRight,
                  margin: const EdgeInsets.only(right: 8, bottom: 30, top: 19),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ForgotPasswordView()));
                    },
                    child: Text(
                      'Forgot Password',
                      style: greenTextStyle(),
                    ),
                  ),
                ),
                //Buttons
                CustomButton(
                  buttontext: 'Sign in',
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: nameStyle(),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const RegisterView()));
                        },
                        child: Text(
                          'Register.',
                          style: greenTextStyle(),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      viewModelBuilder: () => LoginViewModel(),
    );
  }
}
