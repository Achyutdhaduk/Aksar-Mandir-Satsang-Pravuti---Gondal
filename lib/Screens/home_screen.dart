import 'package:aksar_mandir_gondal/Screens/user_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffc41a00),
        elevation: 0,
        title: const Text(
          "Aksar Mandir Satsang Pravuti",
          style: TextStyle(
            fontSize: 22,
            fontFamily: 'regularFont',
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFFB32412),
              ),
              child: Center(
                child: Text(
                  "Aksar Mandir\nSatsang Pravuti",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32, // Adjust font size as needed
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.group,
                color: Color(0xFFB32412),
                size: 29,
              ), // Icon for User
              title: const Text("User"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const UserList(),
                    ));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.logout,
                color: Color(0xFFB32412),
                size: 29,
              ), // Icon for Logout
              title: const Text("Logout"),
              onTap: () {
                // Logout action
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.info,
                color: Color(0xFFB32412),
                size: 29,
              ), // Icon for Developed by
              title: const Text("Developed by"),
              onTap: () {
                Navigator.pop(context); // Close the drawer first
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      title: const Text(
                        "Developed by",
                        style: TextStyle(
                          fontFamily: 'boldFont',
                          fontSize: 20,
                        ),
                      ),
                      content: const Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                           Text(
                            "This app was developed by Vasu Nageshri.",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                           SizedBox(height: 10),
                           Text(
                            "For any inquiries or further development requests, \ncontact: +91 7016457404",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      actions: [
                        TextButton(
                          child: const Text(
                            "Close",
                            style: TextStyle(color: Colors.red),
                          ),
                          onPressed: () {
                            Navigator.of(context).pop(); // Close the dialog
                          },
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          // Date Row with Arrows
          Container(
            height: 100, // Increase container height
            color: Colors.grey.shade300,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Left Icon (Much larger icon)
                Container(
                  alignment: Alignment.center,
                  height: 150, // Increase the height to match the icon size
                  // Set width as needed
                  child: FittedBox(
                    child: IconButton(
                      icon: const Icon(Icons.arrow_left, color: Colors.red),
                      iconSize: 200, // Increased icon size to 200
                      onPressed: () {
                        // Left arrow click action
                      },
                    ),
                  ),
                ),
                // Date Text
                const Text(
                  "Sun, Sep 29",
                  style: TextStyle(
                      fontSize: 20, // Adjust text size as needed
                      fontWeight: FontWeight.bold,
                      fontFamily: 'regularFont'),
                ),
                // Right Icon (Much larger icon)
                Container(
                  alignment: Alignment.center,
                  height: 150, // Increase the height to match the icon size
                  // Set width as needed
                  child: FittedBox(
                    child: IconButton(
                      icon: const Icon(Icons.arrow_right, color: Colors.black),
                      iconSize: 200, // Increased icon size to 200
                      onPressed: () {
                        // Right arrow click action
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 10,
          ),
          // Search Bar
          SizedBox(
            height: 140,
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
            ),
          ),
          Expanded(
              flex: 4,
              child: ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) {
                  return ContactCard(
                    name: users[index]['fullName']!,
                    contactNumber: users[index]['contactNumber']!,
                    userId: users[index]['userId']!,
                  );
                },
              )),
          //
        ],
      ),
    );
  }
}

class ContactCard extends StatefulWidget {
  final String name;
  final String contactNumber;
  final String userId;

  const ContactCard({
    Key? key,
    required this.name,
    required this.contactNumber,
    required this.userId,
  }) : super(key: key);

  @override
  ContactCardState createState() => ContactCardState();
}

class ContactCardState extends State<ContactCard> {
  bool isClicked = false; // Boolean to track icon state

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Card(
        child: ListTile(
          title: Text(
            widget.name,
            style: TextStyle(fontFamily: 'boldFont'),
          ),
          subtitle: Row(
            children: [Text("${widget.userId} - ${widget.contactNumber}")],
          ),
          trailing: IconButton(
            icon: Icon(
              isClicked
                  ? Icons.clear
                  : Icons.done, // Change icon based on state
              size: 30,
              color: isClicked ? Colors.red : Colors.green,
            ),
            onPressed: () {
              setState(() {
                isClicked = !isClicked; // Toggle the state
              });
            },
          ),
        ),
      ),
    );
  }
}
