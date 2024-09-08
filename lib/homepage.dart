import 'package:flutter/material.dart';
import 'package:assessment/Color_text.dart';
import 'package:assessment/my_button.dart';
import 'package:assessment/my_textfield.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final cardWidth = screenSize.width * 0.7;
    final cardHeight = screenSize.height * 0.8;
    final imageHeight = cardHeight * 0.8;
    final imageWidth = cardWidth;
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      body: Center(
        child: Card(
          color: Colors.white,
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          child: SizedBox(
            width: cardWidth,
            height: cardHeight,
            child: Stack(
              children: [
                // Background image
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'lib/images/background.jpg',
                    height: imageHeight,
                    width: imageWidth,
                    fit: BoxFit.cover,
                  ),
                ),
                // Overlay image with text
                Positioned(
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                'lib/images/overlay_image.jpg',
                                height: cardHeight,
                                width: cardWidth * 0.5,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            left: 15,
                            right:
                                15, // Ensure text has space from the right edge
                            child: Container(
                              padding: const EdgeInsets.all(16.0),
                              constraints: BoxConstraints(
                                maxWidth:
                                    cardWidth * 0.5, // Adjust width constraint
                              ),
                              child: FittedBox(
                                fit: BoxFit
                                    .scaleDown, // Adjust text size to fit within the container
                                child: Text(
                                  'Explore Demo Limited\'s Premier Logistics and Freight Services',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'PublicSans',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 32,
                                  ),
                                  textAlign: TextAlign.center, // Center text
                                  overflow:
                                      TextOverflow.ellipsis, // Handle overflow
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                children: [
                                  ClipRRect(
                                    child: Image.asset(
                                      'lib/images/Logo.jpg',
                                      height: 20,
                                      width: 20,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  GradientText(
                                    'DEMO',
                                    style: const TextStyle(
                                      fontFamily: 'Righteous',
                                      fontSize: 16,
                                    ),
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0xFF35A6D6),
                                        Color(0xFF435B83)
                                      ],
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(20, 40, 25, 0),
                              child: Card(
                                color: Colors.white,
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(height: 20),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.asset(
                                        'lib/images/app_icon.jpg',
                                        height: 56,
                                        width: 56,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'Welcome Back',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25,
                                        fontFamily: 'PublicSans',
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'We are glad to see you',
                                      style: TextStyle(
                                        color: Colors.grey.shade800,
                                        fontFamily: 'PublicSans',
                                        fontSize: 12,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    SizedBox(height: 25),
                                    MyTextField(
                                      controller: emailController,
                                      hintText: 'Email',
                                      obscureText: false,
                                    ),
                                    SizedBox(height: 10),
                                    MyTextField(
                                      controller: passwordController,
                                      hintText: 'Password',
                                      obscureText: true,
                                    ),
                                    SizedBox(height: 30),
                                    MyButton(
                                      text: "Sign In",
                                      onTap: () => {},
                                      color: Colors.black,
                                    ),
                                    SizedBox(height: 15),
                                    Text(
                                      'Forgot Password?',
                                      style: TextStyle(
                                        color: Colors.grey.shade800,
                                        fontFamily: 'PublicSans',
                                        fontSize: 12,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    SizedBox(height: 70),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 70),
                              child: Text(
                                '© 2024 DEMO GROUP. All Rights Reserved',
                                style: TextStyle(
                                  color: Colors.grey.shade800,
                                  fontFamily: 'PublicSans',
                                  fontSize: 9,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
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
