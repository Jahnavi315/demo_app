import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login Account',
              style: TextStyle(
                fontSize: 25,
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold,
                letterSpacing: 2
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Email Addresss',
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Password'
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // Container(
            //   height: 50,
            //   width: MediaQuery.of(context).size.width - 40,
            //   color: Colors.amber,
            // ),
            TextButton(
              onPressed: () {
                
              }, 
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: 20,
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold
                ),
              )
            ),
            TextButton(
              onPressed: () {
                
              }, 
              child: Text(
                'Need an account',
                style: TextStyle(
                  fontSize: 15,
                  color: Theme.of(context).colorScheme.primary,
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}