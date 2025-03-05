import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(30, 5, 20, 20),
        child: Column(
          children: [
            const Center(
              child: Text(
                "Find Jobs",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.cyan,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
            const SizedBox(height: 5),
            Image.asset(
              'images/dua.jpg',
              height: 200,
              width: 350,
            ),
            const SizedBox(height: 20),
            Container(
              alignment: Alignment.centerLeft,
              child:Center(
                child:  const Text(
                '"Choose the workplace of your dreams."',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.cyan,
                  fontFamily: 'Roboto',
                ),
              ),
              )
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 30,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Center(
                    child: Text(
                      'Abroad',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: Colors.cyan,
                      width: 2,
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Local',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.cyan,
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: Colors.cyan,
                      width: 2,
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'All',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.cyan,
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            CheckboxListTile(
              value: false,
              onChanged: (value) {},
              title: const Text(
                'Are you sure?',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.cyan,
                  fontFamily: 'Roboto',
                ),
              ),
              activeColor: Colors.cyan,
              checkColor: Colors.cyan,
              side: const BorderSide(color: Colors.cyan),
              controlAffinity: ListTileControlAffinity.leading,
            ),
            const SizedBox(height: 2),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () =>
                    Navigator.pushReplacementNamed(context, "/satu"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.cyan),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: const Text(
                  "Continue",
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'Roboto', fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
