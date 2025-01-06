import 'package:flutter/material.dart';

class Answer2 extends StatelessWidget {
  const Answer2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Social Media Post"),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image:
                          AssetImage('assets/mypic.png'), // Path ของรูปโปรไฟล์
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Narin Srimongkorn",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "5 minutes ago",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 10),
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blueGrey, // สีพื้นหลัง (สำหรับ fallback)
                image: DecorationImage(
                  image: const AssetImage(
                      'assets/postpic.png'), // Path ของรูปพื้นหลัง
                  fit: BoxFit.fitHeight, // ปรับรูปให้เต็มพื้นที่
                  colorFilter: ColorFilter.mode(
                    Colors.blueGrey
                        .withOpacity(0.5), // เพิ่มความทึบของสี blueGrey
                    BlendMode.darken,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text("Like")),
                ElevatedButton(onPressed: () {}, child: const Text("Comment")),
                ElevatedButton(onPressed: () {}, child: const Text("Share")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
