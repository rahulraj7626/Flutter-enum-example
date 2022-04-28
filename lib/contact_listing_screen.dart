import 'package:flutter/material.dart';

class ContactListing extends StatefulWidget {
  const ContactListing({Key? key}) : super(key: key);

  @override
  State<ContactListing> createState() => _ContactListingState();
}

class _ContactListingState extends State<ContactListing> {
  List<Map> contact = [
    {"name": "abcd", "phone": "9809307626", "checked": false, "call": true},
    {"name": "drgfh", "phone": "6487378937", "checked": true, "call": false},
    {"name": "ijkslk", "phone": "65376532", "checked": false, "call": false},
    {"name": "hgdd", "phone": "6728726828", "checked": true, "call": true},
    {"name": "treyye", "phone": "87287629727", "checked": false, "call": true},
    {"name": "abcd", "phone": "9809307626", "checked": true, "call": false},
    {"name": "drgfh", "phone": "6487378937", "checked": false, "call": true},
    {"name": "ijkslk", "phone": "65376532", "checked": false, "call": true},
    {"name": "hgdd", "phone": "6728726828", "checked": true, "call": false},
    {"name": "treyye", "phone": "87287629727", "checked": true, "call": true},
    {"name": "abcd", "phone": "9809307626", "checked": true, "call": false},
    {"name": "drgfh", "phone": "6487378937", "checked": false, "call": true},
    {"name": "ijkslk", "phone": "65376532", "checked": true, "call": false},
    {"name": "hgdd", "phone": "6728726828", "checked": false, "call": true},
    {"name": "treyye", "phone": "87287629727", "checked": true, "call": false},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 225, 240, 253),
      body: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: contact.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: ListTile(
                leading: const CircleAvatar(
                  child: Icon(Icons.person),
                ),
                title: Text(
                  contact[index]["name"].toString(),
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w600),
                ),
                subtitle: Text(contact[index]["phone"].toString()),
                trailing: SizedBox(
                  width: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            contact[index]["checked"] =
                                !contact[index]["checked"];
                          });
                        },
                        child: Icon(
                          Icons.favorite,
                          color: contact[index]["checked"] == true
                              ? Colors.red
                              : Colors.black38,
                          size: 30,
                        ),
                      ),
                      contact[index]["call"] == true
                          ? const Icon(
                              Icons.call_missed,
                              color: Colors.red,
                              size: 30,
                            )
                          : const Icon(
                              Icons.call_received,
                              color: Colors.green,
                              size: 30,
                            ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
