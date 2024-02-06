import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/login.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding:   const EdgeInsets.only(left: 30, top: 140),
              child:
               const Text(
                'Welcome\nBack',
                style: TextStyle(
                  fontSize: 33,
                  color: Colors.white,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.5,
                      right: 35,
                      left: 35),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            hintText: 'Email',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                       const SizedBox(
                        height: 30,
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            hintText: 'Password',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                       const SizedBox(
                        height: 39,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           const Text(
                            'Sign In',
                            style: TextStyle(
                              color: Colors.blue,
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.grey,
                            child: IconButton(
                              color: Colors.white,
                              onPressed: () {},
                              icon:  const Icon(Icons.arrow_forward),
                            ),
                          )
                        ],
                      ),
                       const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, 'register');
                              },
                              child:  const Text(
                                'Sign Up',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w400,
                                ),
                              )),
                          TextButton(
                              onPressed: () {},
                              child:  const Text(
                                'Forget Password',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w400,
                                ),
                              )),
                        ],
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
