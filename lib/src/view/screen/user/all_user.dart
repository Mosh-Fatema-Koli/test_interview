import 'package:flutter/material.dart';
import 'package:test_interview/src/view/widget/k_Text.dart';

class AllUserPage extends StatelessWidget {
  const AllUserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: KText(text: "All Users"),
      ),

    );
  }
}
