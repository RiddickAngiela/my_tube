import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/auth_provider.dart';
import 'home_screen.dart';
import 'login_screen.dart'; // Import the LoginScreen

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider(
        create: (_) => AuthProvider(),
        child: Consumer<AuthProvider>(
          builder: (context, authProvider, child) {
            return Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.blue, Colors.lightBlueAccent],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                ),
                Center(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Create Account',
                          style: TextStyle(
                            fontSize: 32,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 40),
                        TextField(
                          controller: _nameController,
                          decoration: InputDecoration(
                            labelText: 'Name',
                            labelStyle: const TextStyle(color: Colors.white),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.8),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 15,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: const TextStyle(color: Colors.white),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.8),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 15,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextField(
                          controller: _passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: const TextStyle(color: Colors.white),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.8),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 15,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        if (authProvider.errorMessage != null)
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Text(
                              authProvider.errorMessage!,
                              style: const TextStyle(
                                color: Colors.red,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ElevatedButton(
                          onPressed: authProvider.isLoading
                              ? null
                              : () async {
                                  await authProvider.register(
                                    _nameController.text,
                                    _emailController.text,
                                    _passwordController.text,
                                  );

                                  if (authProvider.errorMessage == null) {
                                    if (mounted) {
                                      Navigator.pushReplacement(
                                        // ignore: use_build_context_synchronously
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const HomeScreen(),
                                        ),
                                      );
                                    }
                                  }
                                },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.blue,
                            backgroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 30,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 5,
                            shadowColor: Colors.black.withOpacity(0.3),
                          ),
                          child: authProvider.isLoading
                              ? const SizedBox(
                                  width: 24,
                                  height: 24,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                    valueColor:
                                        AlwaysStoppedAnimation(Colors.blue),
                                  ),
                                )
                              : const Text(
                                  'Sign Up',
                                  style: TextStyle(fontSize: 18),
                                ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Already have an account? ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const LoginScreen(), // Navigate to LoginScreen
                                  ),
                                );
                              },
                              child: const Text(
                                'Log In',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
