import 'package:flutter/material.dart';
import 'package:nepali_info/screens/dummy_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text(
          'Categories Page',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: const Offset(0, 2),
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin:
                        const EdgeInsets.only(left: 18, top: 10, bottom: 10),
                    child: Row(
                      children: const [
                        Icon(Icons.home_filled),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Category - 1',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GridView.count(
                    primary: false,
                    crossAxisCount: 4,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                    shrinkWrap: true,
                    children: [
                      buildIconContainer(
                        icon: const Icon(Icons.add_a_photo_rounded),
                        context: context,
                        text: 'Camera',
                      ),
                      buildIconContainer(
                        icon: const Icon(Icons.add_a_photo_outlined),
                        context: context,
                        text: 'Camera',
                      ),
                      buildIconContainer(
                        icon: const Icon(Icons.add_a_photo_outlined),
                        context: context,
                        text: 'Camera',
                      ),
                      buildIconContainer(
                        icon: const Icon(Icons.add_a_photo_outlined),
                        context: context,
                        text: 'Camera',
                      ),
                      buildIconContainer(
                        icon: const Icon(Icons.add_a_photo_outlined),
                        context: context,
                        text: 'Camera',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: const Offset(0, 2),
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin:
                        const EdgeInsets.only(left: 18, top: 10, bottom: 10),
                    child: Row(
                      children: const [
                        Icon(Icons.shop_2_rounded),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Category - 2',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GridView.count(
                    primary: false,
                    crossAxisCount: 4,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                    shrinkWrap: true,
                    children: [
                      buildIconContainer(
                        icon: const Icon(Icons.place_rounded),
                        context: context,
                        text: 'Place',
                      ),
                      buildIconContainer(
                        icon: const Icon(Icons.place_outlined),
                        context: context,
                        text: 'Place',
                      ),
                      buildIconContainer(
                        icon: const Icon(Icons.place_outlined),
                        context: context,
                        text: 'Place',
                      ),
                      buildIconContainer(
                        icon: const Icon(Icons.place_outlined),
                        context: context,
                        text: 'Place',
                      ),
                      buildIconContainer(
                        icon: const Icon(Icons.place_outlined),
                        context: context,
                        text: 'Place',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: const Offset(0, 2),
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin:
                        const EdgeInsets.only(left: 18, top: 10, bottom: 10),
                    child: Row(
                      children: const [
                        Icon(Icons.card_travel_rounded),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Category - 3',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GridView.count(
                    primary: false,
                    crossAxisCount: 4,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                    shrinkWrap: true,
                    children: [
                      buildIconContainer(
                        icon: const Icon(Icons.shopping_bag_rounded),
                        context: context,
                        text: 'Bag',
                      ),
                      buildIconContainer(
                        icon: const Icon(Icons.shopping_bag_rounded),
                        context: context,
                        text: 'Bag',
                      ),
                      buildIconContainer(
                        icon: const Icon(Icons.shopping_bag_rounded),
                        context: context,
                        text: 'Bag',
                      ),
                      buildIconContainer(
                        icon: const Icon(Icons.shopping_bag_rounded),
                        context: context,
                        text: 'Bag',
                      ),
                      buildIconContainer(
                        icon: const Icon(Icons.shopping_bag_rounded),
                        context: context,
                        text: 'Bag',
                      ),
                      buildIconContainer(
                        icon: const Icon(Icons.shopping_bag_rounded),
                        context: context,
                        text: 'Bag',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildIconContainer({BuildContext? context, Icon? icon, String? text}) =>
    Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              style: BorderStyle.solid,
              color: Colors.white,
            ),
          ),
          child: IconButton(
            onPressed: () => Navigator.of(context!).push(
              MaterialPageRoute(
                builder: (context) => DummyPage(
                  text: text,
                ),
              ),
            ),
            icon: icon!,
          ),
        ),
        Text(text!),
      ],
    );
