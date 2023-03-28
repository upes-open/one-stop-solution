import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:one_stop_solution/models/doctorListTile.dart';

class Medical extends StatefulWidget {
  const Medical({super.key});

  @override
  State<Medical> createState() => _MedicalState();
}

class _MedicalState extends State<Medical> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          size: size.width * 0.06,
          color: Colors.black,
        ),
        actions: [
          Icon(
            Icons.home,
            size: size.width * 0.06,
            color: Colors.black,
          ),
        ],
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Medical',
              style: TextStyle(
                fontSize: size.width * 0.08,
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            ListView.builder(
                itemCount: 0,
                itemBuilder: ((context, index) {
                  return DoctorListTile();
                }))
          ],
        ),
      ),
    );
  }
}
