import 'package:flutter/material.dart';
import 'package:my_bookey/constant/custom_button.dart';
import 'signup_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
      ),
      body:




      SafeArea(
        child: SingleChildScrollView(

          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
             crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Login/Signup buttons at the top - with fixed width
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: SizedBox(
                        width: 140,
                        child: ElevatedButton(
                          onPressed: () {
                            // Already on login screen, do nothing or refresh
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.lightGreen,
                            foregroundColor: Colors.black87,
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                          ),
                          child: const Text('Login'),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    Flexible(
                      child: SizedBox(
                        width: 140,
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignupScreen(),
                              ),
                            );
                          },
                          style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            foregroundColor: Colors.lightGreen,
                            side: BorderSide(color: Colors.lightGreen!),
                          ),
                          child: const Text('Sign Up'),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 30.0),

                // Welcome text
                const Center(
                  child: Text(
                    'Welcome Back',
                    style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                const Center(
                  child: Text(
                    'Please sign in to continue',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16.0,
                    ),
                  ),
                ),
                const SizedBox(height: 30.0),

                // Login form
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                    contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 10.0),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 16.0),
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                    contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 10.0),
                  ),
                  obscureText: true,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      // Add forgot password logic here
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.lightGreen,
                    ),
                    child: const Text('Forgot Password?'),
                  ),
                ),
                const SizedBox(height: 16.0),
                CustomElevatedButton(text: "login", onPressed: (){}),
                ElevatedButton(
                  onPressed: () {
                    // Add login logic here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightGreen,
                    foregroundColor: Colors.black87,
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                  ),
                  child: const Text('Login'),
                ),

                const SizedBox(height: 24.0),

                // OR divider
                Row(
                  children: [
                    Expanded(child: Divider(color: Colors.grey[400])),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        'OR',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ),
                    Expanded(child: Divider(color: Colors.grey[400])),
                  ],
                ),

                const SizedBox(height: 16.0),

                // Social login buttons - compact row
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Google icon button
                    IconButton(
                      onPressed: () {
                        // Add Google login logic here
                      },
                      icon: Icon(
                        Icons.g_mobiledata,
                        color: Colors.red[700],
                        size: 70,
                      ),
                      tooltip: 'Sign in with Google',
                    ),

                    const SizedBox(width: 16),

                    // Facebook icon button
                    IconButton(
                      onPressed: () {
                        // Add Facebook login logic here
                      },
                      icon: Icon(
                        Icons.facebook,
                        color: Colors.blue[800],
                        size: 50,
                      ),
                      tooltip: 'Sign in with Facebook',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}