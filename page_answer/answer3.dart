import 'package:flutter/material.dart';

class Answer3 extends StatelessWidget {
  const Answer3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Layout"),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.grey[300],
            padding: const EdgeInsets.all(15),
            child: const Text("Category: Pets"),
          ),
          const SizedBox(height: 10),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ProductDetail(
                  imgUrl: 'assets/pic1.png', name: 'Cat', price: '2500 THB'),
              ProductDetail(
                  imgUrl: 'assets/pic2.png',
                  name: 'Sugar Glider',
                  price: '690 THB'),
            ],
          ),
          const SizedBox(height: 10),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ProductDetail(
                  imgUrl: 'assets/pic3.png', name: 'Dog', price: '3900 THB'),
              ProductDetail(
                  imgUrl: 'assets/pic4.png', name: 'Rabbit', price: '550 THB'),
            ],
          )
        ],
      ),
    );
  }
}

class ProductDetail extends StatelessWidget {
  final String imgUrl;
  final String name;
  final String price;

  const ProductDetail({
    super.key,
    required this.imgUrl,
    required this.name,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imgUrl,
          width: 150,
          height: 150,
        ),
        Text(name),
        Text(
          price,
          style: const TextStyle(
            color: Colors.green,
          ),
        ),
      ],
    );
  }
}
