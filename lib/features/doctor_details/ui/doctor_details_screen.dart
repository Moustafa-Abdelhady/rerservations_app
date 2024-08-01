import 'package:flutter/material.dart';

class DoctorDetails extends StatelessWidget {
  const DoctorDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Doctor Details'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Doctor Details'),
      ),
    );
  }
}
