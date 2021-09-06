import 'package:channel_search/ui/search_page_channel/views/login_view/login_view_model.dart';
import 'package:channel_search/ui/search_page_channel/widgets/custom_button.dart';
import 'package:channel_search/ui/search_page_channel/widgets/textfield_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        // ignore: avoid_unnecessary_containers
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              // ignore: avoid_unnecessary_containers
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 40),
                child: Text(
                  'Enter Email to recover password',
                  style: headerStyle(),
                ),
              ),
            ),
            Container(
              height: 40,
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
              child: TextFormField(
                  // style: textStyling(),
                  decoration: recoveryFormFields('Name@gmail.com')),
            ),
            CustomButton(
              buttontext: 'Recover Password.',
            ),
          ],
        )),
      ),
      viewModelBuilder: () => LoginViewModel(),
    );
  }
}
