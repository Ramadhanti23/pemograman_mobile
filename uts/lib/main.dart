import 'package:flutter/material.dart';

void main() {
  runApp(DatadiriApp());
}

class DatadiriApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    ProfileScreen(),
    OtherScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E-tracer Study Alumni'),
        centerTitle: true,
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Other',
          ),
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 5, // Adjust the elevation for a shadow effect
        margin: EdgeInsets.all(20), // Adjust margin as needed
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'Welcome to the E-Tracer Study Alumni',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10), // Add spacing between text and other content
              Text(
                'E-tracer Study ini memudahkan bagi para mahasiswa yang sudah lulus untuk berbagai informasi yang berguna.',
                style: TextStyle(fontSize: 16),
              ),
              // You can add more widgets inside the card as needed
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 100, // Set the width to make it a square
            height: 100, // Set the height to make it a square
            decoration: BoxDecoration(
              shape: BoxShape.rectangle, // Change shape to rectangle
              image: DecorationImage(
                image: AssetImage('assets/images/haikal.jpg'), // Default image asset
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Text('Nama : Haikal Handoyono'),
                    Text('Fakultas : Ilmu Komputer'),
                    Text('Jurusan : Teknik Informatika'),
                    Text('Angkatan : 2020'),
                    Text('Employment : IT PT EDS Manufacturing Indonesia 2021-2023'),
                  ],
                ),
              ),
              SizedBox(width: 20), // Add space between photo and text
              // Text(
              //   'Profile Screen',
              //   style: TextStyle(
              //     fontSize: 20,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
            ],
          ),
          SizedBox(height: 20), // Add some space between the existing data and the new data

          // Additional data
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/taeil.jpg'), // Another image asset
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 10), // Add space between photo and text
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Nama : Bulan Windoyoko'),
                  Text('Fakultas : Ilmu Kesehatan'),
                  Text('Jurusan : Ilmu keperawatan'),
                  Text('Angkatan : 2019'),
                  Text('Employment : Perawat Rumah Sakit Bunda 2020-2023'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class OtherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Daftar Alumni ',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          ListTile(
            title: Text(' Daftar Alumni  '),
            subtitle: Text('Bulan Windoyoko : Universitas Lalang Buana'),
          ),
          ListTile(
            title: Text('Daftar Alumni'),
            subtitle: Text(' Haikaln Handoyono : Universitas Harapan '),
          ),
          // Add more education details here
        ],
      ),
    );
  }
}
