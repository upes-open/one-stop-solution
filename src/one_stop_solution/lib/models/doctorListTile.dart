import 'package:flutter/material.dart';

class DoctorListTile extends StatelessWidget {
  const DoctorListTile({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(15), boxShadow: []),
      child: ListTile(
        leading: GestureDetector(
          child: CircleAvatar(
            child: Image.asset("profilepic"),
          ),
        ),
        title: Text("name"),
        subtitle: Column(
          children: [Text("address"), Text("phone number")],
        ),
        trailing: ElevatedButton(
          child: Text("View on Map"),
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(size.width * 0.08))),
        ),
      ),
    );
  }
}
