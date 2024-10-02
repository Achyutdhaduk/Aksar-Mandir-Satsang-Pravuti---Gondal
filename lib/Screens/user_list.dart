import 'package:aksar_mandir_gondal/Screens/add_user.dart';
import 'package:flutter/material.dart';

class UserList extends StatelessWidget {
  const UserList({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> users = [
      {
        "fullName": "Vasu Patel",
        "contactNumber": "123456778",
        "userId": "YR124",
      },
      {
        "fullName": "Anita Desai",
        "contactNumber": "234567889",
        "userId": "YR125",
      },
      {
        "fullName": "Ravi Sharma",
        "contactNumber": "345678990",
        "userId": "YR126",
      },
      {
        "fullName": "Meera Singh",
        "contactNumber": "456789101",
        "userId": "YR127",
      },
      {
        "fullName": "Kiran Mehta",
        "contactNumber": "567890212",
        "userId": "YR128",
      },
      {
        "fullName": "Priya Choudhary",
        "contactNumber": "678901323",
        "userId": "YR129",
      },
      {
        "fullName": "Rajesh Kumar",
        "contactNumber": "789012434",
        "userId": "YR130",
      },
      {
        "fullName": "Sita Varma",
        "contactNumber": "890123545",
        "userId": "YR131",
      },
      {
        "fullName": "Arjun Reddy",
        "contactNumber": "901234656",
        "userId": "YR132",
      },
      {
        "fullName": "Neha Joshi",
        "contactNumber": "012345767",
        "userId": "YR133",
      },
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffc41a00),
        elevation: 0,
        title: const Text(
          "User List",
          style: TextStyle(
            fontSize: 22,
            fontFamily: 'regularFont',
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xffc41a00),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddUser(),
                ));
          },
          child: Icon(Icons.add)),
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Search by Mobile, Name, ID",
                        contentPadding: EdgeInsets.all(8.0),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Search button action
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffc41a00), // Red color
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text(
                          "Search",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Clear button action
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffc41a00), // Red color
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text(
                          "Clear",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              )),
          Expanded(
              flex: 4,
              child: ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) {
                  return ContactCard(
                    name: users[index]['fullName']!,
                    contactNumber: users[index]['contactNumber']!,
                    UserId: users[index]['userId']!,
                  );
                },
              )),
        ],
      ),
    );
  }
}

class ContactCard extends StatelessWidget {
  final String name;
  final String contactNumber;
  final String UserId;

  const ContactCard({
    Key? key,
    required this.name,
    required this.contactNumber,
    required this.UserId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Card(
        child: ListTile(
          title: Text(
            name,
            style: TextStyle(fontFamily: 'boldFont'),
          ),
          subtitle: Row(
            children: [Text("$UserId - $contactNumber")],
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () {
                  // Implement edit functionality here
                },
              ),
              IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  // Implement delete functionality here
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
