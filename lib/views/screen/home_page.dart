import 'package:flutter/material.dart';
import 'package:homepage/utills/product utills/products.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  List<String> categories = [];
  List<String> categoryImages = [
    "https://images.unsplash.com/photo-1604671368394-2240d0b1bb6c?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c21hcnRwaG9uZXN8ZW58MHx8MHx8fDA%3D",
    "https://images.unsplash.com/photo-1603302576837-37561b2e2302?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8bGFwdG9wc3xlbnwwfHwwfHx8MA%3D%3D",
    "https://images.unsplash.com/photo-1595535373192-fc8935bacd89?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8cGVyZnVtZXxlbnwwfHwwfHx8MA%3D%3D",
    "https://e1.pxfuel.com/desktop-wallpaper/596/470/desktop-wallpaper-400-skincare-aesthetic-%E2%99%A1-ideas-skincare-aesthetic.jpg",
    "https://e1.pxfuel.com/desktop-wallpaper/596/470/desktop-wallpaper-400-skincare-aesthetic-%E2%99%A1-ideas-skincare-aesthetic.jpg",
    "https://e1.pxfuel.com/desktop-wallpaper/596/470/desktop-wallpaper-400-skincare-aesthetic-%E2%99%A1-ideas-skincare-aesthetic.jpg",
  ];

  @override
  void initState() {
    super.initState();
    categories = Products.map((e) => e['category'].toString()).toSet().toList();
  }

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;

    TextScaler textScaler = MediaQuery.of(context).textScaler;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        centerTitle: true,
        title: Text('Home'),
        actions: const [
          Icon(Icons.search),
          SizedBox(width: 10),
          Icon(Icons.mail),
          SizedBox(width: 10),
          Icon(Icons.shopping_cart_rounded),
          SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: NetworkImage("assets/images/fashion ad.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: categories
                      .map(
                        (e) =>
                            // Padding(
                            //   padding: const EdgeInsets.all(8.0),
                            //   child: Column(
                            //     children: [
                            //       CircleAvatar(
                            //         radius: w * 0.055,
                            //         backgroundImage: NetworkImage(
                            //           categoryImages[categories.indexOf(e)],
                            //         ),
                            //       ),
                            //       Text(e),
                            //     ],
                            //   ),
                            // ),
                            Container(
                          height: h * 0.085,
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              image: NetworkImage(
                                categoryImages[categories.indexOf(e)],
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Container(
                            color: Colors.grey.withOpacity(0.35),
                            padding: const EdgeInsets.all(8),
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              e.replaceFirst(e[0], e[0].toUpperCase()),
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
