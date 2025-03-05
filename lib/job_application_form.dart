import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: JobApplicationForm(),
  ));
}

class JobApplicationForm extends StatefulWidget {
  @override
  _JobApplicationFormState createState() => _JobApplicationFormState();
}

class _JobApplicationFormState extends State<JobApplicationForm> {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController aboutController = TextEditingController();

  String cvFileName = '';

  void _openFileExplorer() async {
    // Implement file picker logic here
  }

  void _submitForm() {
    // Implement submit functionality
    // Show dialog to confirm submission
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Application Submitted'),
          content: Text('Thank you! Your application has been successfully submitted.'),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop(); // Close dialog
                Navigator.pushReplacementNamed(context, "/form"); // Navigate to another screen if needed
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(
          'Job Form',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    controller: fullNameController,
                    decoration: InputDecoration(labelText: 'Full Name'),
                  ),
                  SizedBox(height: 12),
                  TextField(
                    controller: phoneController,
                    decoration: InputDecoration(labelText: 'Phone Number'),
                  ),
                  SizedBox(height: 12),
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(labelText: 'Email'),
                  ),
                  SizedBox(height: 12),
                  TextField(
                    controller: addressController,
                    decoration: InputDecoration(labelText: 'Address'),
                  ),
                  SizedBox(height: 12),
                  TextField(
                    controller: aboutController,
                    decoration: InputDecoration(labelText: 'About'),
                    maxLines: 2,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Upload your CV and other :',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 12),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: _openFileExplorer,
                      icon: Icon(Icons.attach_file),
                      label: Text('Choose File'),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        backgroundColor: Color.fromARGB(255, 230, 221, 221),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    cvFileName,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _submitForm,
        label: Text(
          'Submit',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        icon: Icon(
          Icons.send,
          size: 25,
          color: Colors.white,
        ),
        backgroundColor: Colors.cyan,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
