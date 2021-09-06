import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'ui/search_page_channel/constant/colors.dart';
import 'ui/search_page_channel/views/register_view/register_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: greenColor));
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegisterView(),
    );
  }
}
