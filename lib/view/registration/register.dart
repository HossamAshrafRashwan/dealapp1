import 'package:dealapp1/component/my_text_form_field.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        centerTitle: true,
        title: Text(
          'Create New Account',
          style: TextStyle(color: Theme.of(context).colorScheme.background),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            MyTextFormField(
              keyBoardType: TextInputType.number,
              labelText: 'Number',
              textInputAction: TextInputAction.next,
            ),
            MyTextFormField(
              keyBoardType: TextInputType.number,
              labelText: 'password',
              textInputAction: TextInputAction.next,
              obscureText: true,
              suffixIcon: IconButton(
                icon: Icon(Icons.remove_red_eye_outlined),
                onPressed: () {},
              ),
            ),
            MyTextFormField(
              keyBoardType: TextInputType.number,
              labelText: 'confirm password',
              textInputAction: TextInputAction.done,
              obscureText: true,
              suffixIcon: IconButton(
                icon: Icon(Icons.remove_red_eye_outlined),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
