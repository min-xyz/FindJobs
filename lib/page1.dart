import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Job Details App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MPage(),
    );
  }
}

class MPage extends StatefulWidget {
  @override
  _MPageState createState() => _MPageState();
}

class _MPageState extends State<MPage> {
  List<dynamic> jobList = [];
  List<dynamic> originalJobList = [];
  bool isLoading = true;
  bool hasError = false;
  bool isSearching = false;
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    fetchJobList();
  }

  Future<void> fetchJobList() async {
    setState(() {
      isLoading = true; // Set loading state when fetching data
    });

    try {
      final response = await http.get(
        Uri.parse('https://arbeitnow.com/api/job-board-api'),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        setState(() {
          jobList = data['data'];
          originalJobList = List.from(jobList); // Copy the original list
          isLoading = false;
        });
      } else {
        setState(() {
          hasError = true;
          isLoading = false;
        });
      }
    } catch (e) {
      setState(() {
        hasError = true;
        isLoading = false;
      });
    }
  }

  void filterSearchResults(String query) {
    List<dynamic> filteredList = originalJobList.where((job) {
      String title = job['title'].toLowerCase();
      return title.contains(query.toLowerCase());
    }).toList();
    setState(() {
      jobList.clear();
      jobList.addAll(filteredList);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(
          'Find Your Job Here',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: controller,
              onChanged: (value) {
                setState(() {
                  filterSearchResults(value);
                  isSearching = value.isNotEmpty;
                });
              },
              decoration: InputDecoration(
                hintText: 'Search for jobs',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                fillColor: Colors.white,
                filled: true,
              ),
            ),
          ),
          Expanded(
            child: isLoading && jobList.isEmpty // Show loading indicator only if jobList is empty and still loading
                ? Center(child: CircularProgressIndicator())
                : hasError
                    ? Center(child: Text('Failed to load job list'))
                    : jobList.isEmpty
                        ? Center(child: Text('No jobs found'))
                        : ListView.builder(
  itemCount: jobList.length,
  itemBuilder: (context, index) {
    final job = jobList[index];
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 86, 224, 243), // Memberikan latar belakang warna cyan
        borderRadius: BorderRadius.circular(8.0),
      ),
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        title: Text(job['title'], style: TextStyle(color: Colors.black)),
        subtitle: Text(job['company_name'], style: TextStyle(color: Colors.black54)),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailPage(jobId: job['slug']),
            ),
          );
        },
      ),
    );
  },
),

          ),
        ],
      ),
    );
  }
}
