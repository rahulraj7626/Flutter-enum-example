import 'package:contact_listing_ui/enumaraters.dart';
import 'package:contact_listing_ui/logic.dart';
import 'package:flutter/material.dart';

class EnumTest extends StatefulWidget {
  const EnumTest({Key? key}) : super(key: key);

  @override
  State<EnumTest> createState() => _EnumTestState();
}

class _EnumTestState extends State<EnumTest> {
  TextEditingController one = TextEditingController();
  TextEditingController two = TextEditingController();
  Color bg = Colors.orange;
  int val = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bg,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: one,
            ),
            TextField(
              controller: two,
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  val = calculation(
                      Test.minus, int.parse(one.text), int.parse(two.text));
                });
              },
              icon: Icon(
                Icons.minimize,
                size: 50,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  val = calculation(
                      Test.plus, int.parse(one.text), int.parse(two.text));
                });
              },
              icon: Icon(
                Icons.add,
                size: 50,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              val.toString(),
              style: TextStyle(fontSize: 50),
            )
          ],
        )));
  }
}
