import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: const Text(
          'Find Jobs',
          style: TextStyle(
            color: Colors.cyan,
            fontSize: 28,
            fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
      ),

      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(30, 0, 30,0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                "Register",
                style: TextStyle(
                  fontSize: 33,
                  color: Colors.cyan,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            const SizedBox(height: 10),
             const Text(
                 "Register to get started",
               style: TextStyle(
                 color: Colors.cyan,
                 fontSize: 18,
                 fontFamily: 'Roboto',
               ),
             ),
            const SizedBox(height: 13),
            const TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "username",
                border:  OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 13),
            const TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "Email",
                border:  OutlineInputBorder(),
                
              ),
            ),
            const SizedBox(height: 13),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                border:  OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 13),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Confirm Password",
                border:  OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 13),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.cyan),

                    borderRadius: BorderRadius.circular(5),
                    
                  ),
                ),
                child: const Text(
                  "Register",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 10.0, right: 15.0,),
                    child: const Divider(
                      color: Colors.cyan,
                      height: 50,
                    ),
                  ),
                ),
                const Text("Or Register With",
                style: TextStyle(
                  color: Colors.cyan,
                  fontSize: 15,
                  fontFamily: 'Roboto',
                ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 15.0, right: 10.0),
                    child: const Divider(
                      color: Colors.cyan,
                      height: 50,
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 4, 0, 255),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Icon(
                              Icons.facebook,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 5),
                          Center(
                            child: Text(
                              'Facebook',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 10),
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(5),                        
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Icon(
                              Icons.g_mobiledata,
                              size: 35,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 5),
                          Center(
                            child: Text(
                              'Google',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 5),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already Have an account?",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                  TextButton(
                    onPressed: () =>
                        Navigator.pushReplacementNamed(context, "/login"),
                    child: const Text("Login"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}