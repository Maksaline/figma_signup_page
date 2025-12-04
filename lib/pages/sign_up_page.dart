import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isObscure = true;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.only(left: 20, right: 20, top: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 4,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Color(0xFFDFE2EB),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                SizedBox(height: 20),
                Text('Welcome Back!', style: Theme.of(context).textTheme.headlineLarge),
                SizedBox(height: 10),
                Text("Let's Login for explore continues", style: Theme.of(context).textTheme.bodyMedium),
                SizedBox(height: 10),
                Image.asset(
                  'assets/logo.png',
                  height: 100,
                  fit: BoxFit.cover,
                  color: Theme.of(context).colorScheme.primary,
                ),
                SizedBox(height: 10),
                Text('REXODUS GAMING', style: Theme.of(context).textTheme.headlineMedium),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Email or Phone Number', style: Theme.of(context).textTheme.labelLarge),
                  ],
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    fillColor: Theme.of(context).colorScheme.onSurface,
                    filled: true,
                    hintText: 'Enter your email',
                    hintStyle: Theme.of(context).textTheme.bodyMedium,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
                    ),
                    prefixIcon: Icon(Icons.email_outlined, color: Theme.of(context).colorScheme.primary),
                  ),
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.black),
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Password', style: Theme.of(context).textTheme.labelLarge),
                  ],
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    fillColor: Theme.of(context).colorScheme.onSurface,
                    filled: true,
                    hintText: 'Enter your password',
                    hintStyle: Theme.of(context).textTheme.bodyMedium,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
                    ),
                    prefixIcon: Icon(Icons.lock_outline, color: Theme.of(context).colorScheme.primary),
                    suffixIcon: IconButton(
                      icon: Icon(isObscure ? Icons.visibility_outlined : Icons.visibility_off_outlined, color: Theme.of(context).colorScheme.error,),
                      onPressed: () {
                        setState(() {
                          isObscure = !isObscure;
                        });
                      },
                    )
                  ),
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.black),
                  keyboardType: TextInputType.emailAddress,
                  obscureText: isObscure,
                ),
                // SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                      activeColor: Theme.of(context).colorScheme.primary,
                      checkColor: Colors.white,
                      side: BorderSide(width: 1, color: Theme.of(context).colorScheme.error),
                      visualDensity: VisualDensity(horizontal: -4, vertical: -4),
                    ),
                    Text('Remember Me', style: Theme.of(context).textTheme.labelMedium),
                    Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: Text('Forgot Password?', style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      )),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 15),
                    minimumSize: Size(double.infinity, 50),
                  ),
                  onPressed: () {},
                  child: Text('Login', style: Theme.of(context).textTheme.labelLarge?.copyWith(color: Colors.white)),
                ),
                SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        color: Theme.of(context).colorScheme.onSecondary,
                      ),
                    ),
                    Text(
                      'You can connect with', style: Theme.of(context).textTheme.labelSmall,
                    ),
                    Expanded(
                      child: Container(
                        height: 1,
                        color: Theme.of(context).colorScheme.onSecondary,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Brand(Brands.facebook, size: 56,),
                      padding: EdgeInsets.symmetric(horizontal: 2, vertical: 16),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Brand(Brands.google, size: 56,),
                      padding: EdgeInsets.symmetric(horizontal: 2, vertical: 16),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Brand(Brands.apple_logo, size: 56,),
                      padding: EdgeInsets.symmetric(horizontal: 2, vertical: 16),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have an account?', style: Theme.of(context).textTheme.labelLarge),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 2, vertical: 0),
                        minimumSize: Size(0, 0),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      child: Text('Sign Up here', style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      )),
                    )
                  ]
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
