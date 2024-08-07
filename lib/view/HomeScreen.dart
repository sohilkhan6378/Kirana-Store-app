import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcbcbcb),
      drawer: const Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.green),
        title: Text(
          "Home",
          style: TextStyle(color: Colors.green, fontSize: 18),
        ),
        actions: [
          CircleAvatar(
            radius: 13,
            backgroundColor: Colors.grey.shade400,
            child: Icon(
              Icons.search,
              size: 22,
              color: Colors.green,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: CircleAvatar(
              radius: 13,
              backgroundColor: Colors.grey.shade400,
              child: Icon(
                Icons.shopping_cart,
                size: 20,
                color: Colors.green,
              ),
            ),
          )
        ],
        backgroundColor: Colors.orangeAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1489450278009-822e9be04dff?w=500&auto=format&fit=crop&q="
                              "60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fGFsbCUyMHR5cGUlMjB2ZWdldGFibGUlMjBpbWFnZXxlbnwwfHwwfHx8MA%3D%3D")),
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)),
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      Container(
                        height: 40,
                        width: 110,
                        decoration: BoxDecoration(
                            color: Colors.orangeAccent,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                            )),
                        child: Text(
                          "Vegi",
                          style: TextStyle(
                              color: Colors.greenAccent.shade200,
                              fontSize: 18,
                              shadows: [
                                BoxShadow(
                                    blurRadius: 10,
                                    color: Colors.orangeAccent,
                                    offset: Offset(5, 5))
                              ]),
                        ),
                        alignment: Alignment.center,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text(
                          "30% Off",
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.orangeAccent),
                        ),
                      ),
                      Container(
                          width: 110,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "On All Product Cagetable",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.orangeAccent,
                                  fontWeight: FontWeight.w500),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3.0, left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Herbs Seasoning",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.greenAccent),
                    ),
                    Text(
                      "View All",
                      style: TextStyle(
                          color: Colors.greenAccent,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              //   listview
              Container(
                height: 260,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      //height: 20,
                      width: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.network(
                            "https://pngimg.com/uploads/cabbage/small/cabbage_PNG8803.png",
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text(
                                  "Fresh Gobhi",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.orangeAccent),
                                ),
                              )),
                          Container(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text(
                                  "50\$ gram",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.greenAccent),
                                ),
                              )),
                          SizedBox(
                            height: 5,
                          ),

                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                    child: Container(
                                      padding: EdgeInsets.all(3),
                                  height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.white,
                                      border: Border.all(
                                        width: 1,
                                        color: Colors.black38,
                                      )
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("50Gram", style: TextStyle(fontSize: 11),),
                                      Icon(Icons.arrow_drop_down_circle_outlined,size: 13,color: Colors.orangeAccent,)
                                    ],
                                  ),
                                )),
                                SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                    child: Container(
                                      padding: EdgeInsets.all(3),
                                  height: 30,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.white,
                                      border: Border.all(
                                        width: 1,
                                        color: Colors.black38,
                                      )
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(Icons.remove,size: 13, color: Colors.orangeAccent,),
                                      Text("1", style: TextStyle(fontSize: 12, color: Colors.orangeAccent),),
                                      Icon(Icons.add, size: 13,color: Colors.orangeAccent,)
                                    ],
                                  ),
                                ))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  itemCount: 30,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Fresh Fruits", style: TextStyle(fontSize: 16, color: Colors.orangeAccent),),
                    Text("View All" , style: TextStyle(fontSize: 16, color: Colors.orangeAccent))
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 260,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      //height: 20,
                      width: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.network(
                            "https://static.vecteezy.com/system/resources/thumbnails/024/991/947/small_2x/"
                                "fresh-fruit-basket-fresh-fruits-basket-colorful-fruits-green-fruits-transparent-background-ai-generated-png.png",
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text(
                                  "Fresh Fruits",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.orangeAccent),
                                ),
                              )),
                          Container(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text(
                                  "50\$ Kg",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.greenAccent),
                                ),
                              )),
                          SizedBox(
                            height: 5,
                          ),

                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                    child: Container(
                                      padding: EdgeInsets.all(3),
                                      height: 30,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(12),
                                          color: Colors.white,
                                          border: Border.all(
                                            width: 1,
                                            color: Colors.black38,
                                          )
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("50/Kg", style: TextStyle(fontSize: 11),),
                                          Icon(Icons.arrow_drop_down_circle_outlined,size: 13,color: Colors.orangeAccent,)
                                        ],
                                      ),
                                    )),
                                SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                    child: Container(
                                      padding: EdgeInsets.all(3),
                                      height: 30,
                                      width: 60,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(12),
                                          color: Colors.white,
                                          border: Border.all(
                                            width: 1,
                                            color: Colors.black38,
                                          )
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(Icons.remove,size: 13, color: Colors.orangeAccent,),
                                          Text("1", style: TextStyle(fontSize: 12, color: Colors.orangeAccent),),
                                          Icon(Icons.add, size: 13,color: Colors.orangeAccent,)
                                        ],
                                      ),
                                    ))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  itemCount: 30,
                  scrollDirection: Axis.horizontal,
                ),
              ),


            //   dry fruits
            SizedBox(
              height: 10,
            ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Fresh Dry Fruits", style: TextStyle(fontSize: 16, color: Colors.orangeAccent),),
                    Text("View All" , style: TextStyle(fontSize: 16, color: Colors.orangeAccent))
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 260,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      //height: 20,
                      width: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.network(
                            "https://nimafoods.com/cdn/shop/files/Untitleddesign_1_c9e34e90-ea85-42cd-a6e5-8d45609ec5f0.png?v=1684563404",
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text(
                                  "Fresh Dry Fruits",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.orangeAccent),
                                ),
                              )),
                          Container(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text(
                                  "50\$ kg",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.greenAccent),
                                ),
                              )),
                          SizedBox(
                            height: 5,
                          ),

                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                    child: Container(
                                      padding: EdgeInsets.all(3),
                                      height: 30,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(12),
                                          color: Colors.white,
                                          border: Border.all(
                                            width: 1,
                                            color: Colors.black38,
                                          )
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("500/kg", style: TextStyle(fontSize: 11),),
                                          Icon(Icons.arrow_drop_down_circle_outlined,size: 13,color: Colors.orangeAccent,)
                                        ],
                                      ),
                                    )),
                                SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                    child: Container(
                                      padding: EdgeInsets.all(3),
                                      height: 30,
                                      width: 60,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(12),
                                          color: Colors.white,
                                          border: Border.all(
                                            width: 1,
                                            color: Colors.black38,
                                          )
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(Icons.remove,size: 13, color: Colors.orangeAccent,),
                                          Text("1", style: TextStyle(fontSize: 12, color: Colors.orangeAccent),),
                                          Icon(Icons.add, size: 13,color: Colors.orangeAccent,)
                                        ],
                                      ),
                                    ))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  itemCount: 30,
                  scrollDirection: Axis.horizontal,
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
