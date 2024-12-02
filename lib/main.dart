import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Colors.teal), // Change to teal
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Map<String, dynamic>> ListVGA = [
    {
      'gambar': '4060.webp',
      'merk': 'ZOTAC Nvidia Geforce RTX 4060 TWIN EDGE OC 8GB GDDR6 - Gaming VGA',
      'harga': '2.399.000',
      'rating': '4.4',
      'jumlah': '10 rb',
      'view': '12,7 rb'
    },
    {
      'gambar': '4060TI.webp',
      'merk': 'ZOTAC GAMING Nvidia GeForce RTX 4060 Ti 16GB AMP GDDR6',
      'harga': '2.399.000',
      'rating': '4.7',
      'jumlah': '10 rb',
      'view': '10,2 rb'
    },
    {
      'gambar': '4070super.webp',
      'merk': 'ZOTAC GAMING Nvidia GeForce RTX 4070 SUPER Twin Edge OC 12GB GDDR6X',
      'harga': '2.399.000',
      'rating': '4.5',
      'jumlah': '10 rb',
      'view' : '13,6 rb'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Toko Madura',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.43,
          ),
          itemCount: ListVGA.length,
          itemBuilder: (context, index) {
            final menu = ListVGA[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      color: Colors.grey.shade400,
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.topCenter,
                        height: 200,
                        child: ClipRRect(
                          child: Image.asset(
                            menu['gambar'],
                            width: 300,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 30,
                              child: Text(
                                menu['merk'],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Row(
                              children: [ 
                                SizedBox(width: 5),
                                Icon(Icons.shopping_cart,
                                        color: Colors.green),
                                    Text(menu['view'],
                                    style: TextStyle(
                                            color: Colors.black)),
                                SizedBox(width: 10,),
                                RatingBar.builder(
                                  initialRating: double.parse(menu['rating']),
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  ignoreGestures: true,
                                  itemCount: 5,
                                  itemSize: 12,
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.green,
                                  ),
                                  onRatingUpdate: (double value) {},
                                ),
                                Text(menu['rating'],
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black)),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Divider(
                              height: 2,
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Text('Harga mulai dari', 
                                style: TextStyle(
                                  fontSize: 12,
                                ),),
                                SizedBox(width: 5,),
                                Icon(
                                  Icons.info_outline, size: 15,
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Padding(
                              padding: const EdgeInsets.only(left: 6),
                              child: Row(
                                children: [
                                  Text('RP',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.red
                                  )),
                                  SizedBox(width: 5,),
                                  Text(menu['harga'], 
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red,
                                  ),)
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Divider(
                              height: 2,
                            ),
                            SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(width: 20),
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 1,
                                            color: Colors.grey,
                                          ),
                                        ],
                                      ),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.bookmark_border,
                                            color: Colors
                                                .teal), // Change bookmark icon color to teal
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Container(
                              color: Colors.green,
                              width: double.infinity,
                              child: TextButton(
                                onPressed: (){}, 
                                child: Text('Buy', style: 
                                TextStyle(
                                  color: Colors.white,
                                ),)
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
