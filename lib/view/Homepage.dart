import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Smart Scanner"), centerTitle: true),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(10),
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              child: InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(24),
                child: Column(
                  children: [
                    SizedBox(height: 8),
                    Image.asset(
                      'assets/Cards/card1.png',
                      height: 180,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 8),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              child: InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(24),
                child: Column(
                  children: [
                    SizedBox(height: 8),
                    Image.asset(
                      'assets/Cards/card2.png',
                      height: 180,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 8),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
