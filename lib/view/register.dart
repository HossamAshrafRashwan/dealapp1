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
          style: TextStyle(color: Theme.of(context).colorScheme.onTertiary),
        ),
      ),
      body: Column(
        children: [
          
        ],
      ),
    );
  }
}
