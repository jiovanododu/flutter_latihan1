import 'package:flutter/material.dart';

class Tugas extends StatefulWidget {
  const Tugas({Key? key}) : super(key: key);

  @override
  State<Tugas> createState() => _TugasState();
}

class _TugasState extends State<Tugas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'galeri family',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 200, 105),
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 3,
        backgroundColor: Color.fromARGB(255, 79, 174, 20),
        actions: const [
          Icon(
            Icons.logout,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.person,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
        ],
        leading: const Icon(
          Icons.settings,
          color: Colors.white,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(16),
                      padding: const EdgeInsets.all(16),
                      width: 150, // Adjusted width
                      height: 150, // Adjusted height
                      child: Image.asset('assets/images/jio.jpg'),
                    ),
                    Container(
                      margin: const EdgeInsets.all(16),
                      padding: const EdgeInsets.all(16),
                      width: 150, // Adjusted width
                      height: 150, // Adjusted height
                      child: Image.asset('assets/images/mama.jpg'),
                    ),
                  ],
                );
              },
              itemCount: 10,
              separatorBuilder: (context, index) {
                return const Divider();
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return const Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/1.jpeg'),
                    ),
                    title: Text('keluarga'),
                    subtitle: Text('asik'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Color.fromARGB(255, 238, 11, 147),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.delete),
                        SizedBox(
                          width: 10,
                        ),
                        
                      ],
                    ),
                  ),
                );
              },
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
