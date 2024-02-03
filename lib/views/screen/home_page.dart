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
    "https://cdn.mos.cms.futurecdn.net/LekCjjpyVoWeFAJwZ79Tzc-480-80.jpg.webp",
    "https://images.unsplash.com/photo-1595535373192-fc8935bacd89?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8cGVyZnVtZXxlbnwwfHwwfHx8MA%3D%3D",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShnVPzvH6EiwpexsRWZ56VAPWPoeetBItyeg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeHiI7XVa8v_ocg9oao4mSMGsD-Qv-fGAzaA&usqp=CAU",
    "https://homsstore.com/cdn/shop/files/Brown3_and_Beige_Minimalist_Fashion_Banner_1600x.png?v=1679576174",
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //---------- advertised -------------
            Expanded(
              child: Container(
                height: h * 0.1,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.indigo),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2,
                      offset: Offset(3, 3),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: NetworkImage("assets/images/fashion ad.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),

            Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            Column(
              children: [
                Container(
                  height: h * 0.03,
                  width: w * 0.2,
                  padding: EdgeInsets.only(top: 5),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.topCenter,
                  child: Text(
                    "Category",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      shadows: [
                        Shadow(
                          color: Colors.white10,
                          offset: Offset(2, 2),
                          blurRadius: 1,
                        ),
                      ],
                      color: Colors.black87,
                    ),
                  ),
                ),
              ],
            ),
            //---------- category -----------
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  Container(
                    height: h * 0.1,
                    child: Row(
                      children: categories
                          .map(
                            (e) => Container(
                              margin: const EdgeInsets.only(top: 10, right: 10),
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 2,
                                    offset: Offset(3, 3),
                                  ),
                                ],
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
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.35),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                padding: const EdgeInsets.all(8),
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  e.replaceFirst(e[0], e[0].toUpperCase()),
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
                                    shadows: [
                                      Shadow(
                                        color: Colors.black,
                                        offset: Offset(2, 2),
                                        blurRadius: 1,
                                      ),
                                    ],
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            Column(
              children: [
                Container(
                  height: h * 0.03,
                  width: w * 0.2,
                  padding: EdgeInsets.only(top: 5),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.topCenter,
                  child: Text(
                    "Top Products",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      shadows: [
                        Shadow(
                          color: Colors.white10,
                          offset: Offset(2, 2),
                          blurRadius: 1,
                        ),
                      ],
                      color: Colors.black87,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
            ),

            //--------- top product ------------
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(9),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                      Products.length,
                      (index) => Container(
                        alignment: Alignment.center,
                        height: h * 0.3,
                        width: w * 0.9,
                        margin: const EdgeInsets.only(top: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.white,
                              blurRadius: 2,
                              offset: Offset(3, 3),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Row(
                              children: [
                                Container(
                                  height: h * 0.3,
                                  width: w * 0.4,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey,
                                  ),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                Container(
                                  height: h * 0.3,
                                  width: w * 0.4,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    shape: BoxShape.rectangle,
                                    color: Colors.orange,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // child: Container(
                  //   height: h * 0.06,
                  //   decoration: BoxDecoration(
                  //     color: Colors.black12,
                  //     borderRadius: BorderRadius.circular(10),
                  //   ),
                ),
              ),
            ),
          ],
        ),
        // ),
      ),
    );
  }
}
