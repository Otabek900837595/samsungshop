import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> listImg = [
    "assets/images/image1.jpg",
    "assets/images/image2.jpg",
    "assets/images/image3.jpg",
    "assets/images/image4.jpg",
    "assets/images/image5.jpg",
    "assets/images/image6.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5000,
        backgroundColor: Colors.deepOrange,
        title: const Text("samsung shop"),
        leading: Icon(Icons.menu),
        actions: [
          Container(
            height: 30,
            width: 60,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text("6"),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 240,
            margin: EdgeInsets.all(20),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage("assets/images/image3.jpg"),
                fit: BoxFit.cover,
              ),

            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  colors: [
                    Colors.black.withOpacity(.3),
                    Colors.black.withOpacity(.01),
                  ]
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children:  [
                  Text("Lifesstyle sale",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
                  SizedBox(height: 30,),
                  Container(
                    height: 50,
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text("shop Now",style: TextStyle(color: Colors.grey.shade900,),),
                    ),
                  ),
                  SizedBox(height: 30,),
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          Expanded(
            child: GridView.count(
              crossAxisCount: 1,
              children: listImg.map((item) => cellOfList(item)).toList(),
            ),
          ),
        ],
      ),
    );
  }


  Widget cellOfList(String item){
    return Card(
      elevation: 0,
      color: Colors.transparent,
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(item),
            fit: BoxFit.cover,
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.favorite,color: Colors.red, size: 35,)
          ],
        ),
      ),
    );
  }
}
