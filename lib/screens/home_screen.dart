import 'package:flutter/material.dart';
import 'package:pet_app/configuration/configuration.dart';
import 'package:pet_app/screens/pet_details.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;

  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      decoration: isDrawerOpen
          ? BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
            )
          : BoxDecoration(color: Colors.white),
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor),
      duration: Duration(milliseconds: 250),
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 5.0,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    isDrawerOpen
                        ? IconButton(
                            onPressed: () {
                              setState(() {
                                xOffset = 0;
                                yOffset = 0;
                                scaleFactor = 1;
                                isDrawerOpen = false;
                              });
                            },
                            icon: Icon(Icons.arrow_back_ios),
                          )
                        : IconButton(
                            onPressed: () {
                              setState(() {
                                xOffset = 230;
                                yOffset = 150;
                                scaleFactor = 0.6;
                                isDrawerOpen = true;
                              });
                            },
                            icon: Icon(Icons.menu),
                          ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.location_on,
                                color: primaryColor,
                                size: 20,
                              ),
                            ),
                            Text(
                              'Kyiv, ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text('Ukraine'),
                          ],
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('images/pet_cat1.png'),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      topLeft: Radius.circular(25)),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15.0),
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: primaryColor),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey[400],
                          ),
                          hintText: 'Search pet',
                          hintStyle: TextStyle(
                              letterSpacing: 1, color: Colors.grey[400]),
                          filled: true,
                          fillColor: Colors.white,
                          suffixIcon:
                              Icon(Icons.tune_sharp, color: Colors.grey[400]),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      height: 120,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: categories.length,
                          itemBuilder: (context, index) {
                            return Container(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: shadowList,
                                    ),
                                    child: Image(
                                      image: AssetImage(
                                          categories[index]['imagePath']),
                                      height: 50,
                                      width: 50,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    categories[index]['name'],
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    ListView.builder(
                      physics: ScrollPhysics(),
                      itemCount: catMapList.length,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemBuilder: (context,index){
                        return GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => PetDetails(catDetailsMap: catMapList[index],)));
                          },
                          child: Container(
                            height: 230,
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Stack(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: (index % 2 == 0) ? Colors.blueGrey[200] : Colors.orangeAccent[200] ,
                                          borderRadius: BorderRadius.circular(20),
                                          boxShadow: shadowList,
                                        ),
                                        margin: EdgeInsets.only(top: 40),
                                      ),
                                      Align(
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Hero(
                                                tag: 'pet${catMapList[index]['id']}',
                                                child: Image.asset(catMapList[index]['imagePath'])),
                                          )),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(top: 65, bottom: 20),
                                    padding: EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(20),
                                          bottomRight: Radius.circular(20)),
                                      boxShadow: shadowList,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              catMapList[index]['name'],
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 21.0,
                                                color: Colors.grey[600],
                                              ),
                                            ),
                                            (catMapList[index]['sex'] == 'male') ? Icon(
                                              Icons.male_rounded,
                                              color: Colors.grey[500],
                                            ) : Icon(
                                              Icons.female_rounded,
                                              color: Colors.grey[500],
                                            ),
                                          ],
                                        ),
                                        Text(
                                          catMapList[index]['Species'],
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey[500],
                                          ),
                                        ),
                                        Text(
                                          catMapList[index]['year']+' years old',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey[400],
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.location_on,
                                              color: primaryColor,
                                              size: 18,
                                            ),
                                            SizedBox(
                                              width: 3,
                                            ),
                                            Text(
                                              'Distance: '+catMapList[index]['distance'],
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.grey[400],
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
