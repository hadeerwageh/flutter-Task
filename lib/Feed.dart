import 'package:flutter/material.dart';

class feed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: TextButton(
          onPressed: () {
            Navigator.popAndPushNamed(context, '/SingUp');
          },
          child: Text("Back", style: TextStyle(color: Colors.green)),
        ),
        title: Center(
          child: Text('Feed', style: TextStyle(color: Colors.black)),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text("Filter", style: TextStyle(color: Colors.green)),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    print("click");
                  },
                  title: Text('Header', style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text(
                    "He'll want to use your yacht, and I don't want this thing smelling like fish.",
                  ),
                  trailing: Text('8m ago'),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.circle, color: Colors.green), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.circle, color: Colors.grey), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.circle, color: Colors.grey), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.circle, color: Colors.grey), label: ''),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: (index) {},
      ),
    );
  }
}
