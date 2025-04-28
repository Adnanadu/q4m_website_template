import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:q4m_website_template/feature/authPage/view/widgets/login_via_social_media_widget.dart';
import 'package:q4m_website_template/feature/authPage/view/widgets/register_as_vendor_widget.dart';
import 'package:q4m_website_template/feature/authPage/view/widgets/sign_form_field_widget.dart';
import 'package:q4m_website_template/feature/authPage/view/widgets/signup_button_widget.dart';

class LoginPage extends HookWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              spacing: 16,
              children: [
                /// Login page images
                Column(
                  children: [
                    Center(
                      child: SizedBox(
                        width: 408,
                        height: 222,
                        child: Stack(
                          children: [
                            Image(
                              image: AssetImage(
                                'assets/images/bundle_login.png',
                              ),
                            ),

                            Positioned(
                              top: 110,
                              left: 270,
                              child: Image(
                                image: AssetImage(
                                  'assets/images/q4m_login.png',
                                ),
                                height: 54,
                                width: 120,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                /// Login Via Email and Facebook
                Center(
                  child: Column(
                    children: [
                      Text(
                        "Welcome ",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 16),
                      Text("Choose how you'd like to continue"),
                      SizedBox(height: 16),
                      LogiaViaSocialMediaWidget(
                        text: 'Continue with Google',
                        assetImage: 'assets/icons/google_login.png',
                      ),
                      SizedBox(height: 8),
                      LogiaViaSocialMediaWidget(
                        text: 'Continue with Facebook',
                        assetImage: 'assets/icons/fb_login.png',
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: Colors.grey.shade200,
                              thickness: 1,
                            ),
                          ),
                          SizedBox(width: 8),
                          Text("or"),
                          SizedBox(width: 8),
                          Expanded(
                            child: Divider(
                              color: Colors.grey.shade200,
                              thickness: 1,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                /// Login Form
                Center(
                  child: Column(
                    children: [
                      SignUpFieldWidget(
                        emailController: emailController,
                        passwordController: passwordController,
                      ),

                      SizedBox(height: 16),
                      SignupButtonWidget(),
                      SizedBox(height: 8),
                      RegisterAsVendorButtonWidget(),
                      SizedBox(height: 16),
                      RichText(
                        text: TextSpan(
                          text: 'Already have an account?',
                          style: TextStyle(color: Colors.black, fontSize: 14),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' Log in',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 8),
                      RichText(
                        text: TextSpan(
                          text: 'By continuing, you agree to our ',

                          style: TextStyle(color: Colors.black, fontSize: 12),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Terms of Service',
                              style: TextStyle(color: Colors.blue),
                            ),
                            TextSpan(text: ' and', style: TextStyle()),
                            TextSpan(
                              text: ' Privacy Policy',
                              style: TextStyle(color: Colors.blue),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 32),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
