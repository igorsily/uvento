import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List items4 = [
      {
        "title": "Sports Meet in Galaxy Field",
        "data": "Jan 12, 2019",
        "location": "Greenfields, Sector 42, Faridabad",
        "png": "assets/20.png",
      },
      {
        "title": "Art & Meet in Street Plaza",
        "data": "Jan 12, 2019",
        "location": "Greenfields, Sector 42, Faridabad",
        "png": "assets/21.png",
      },
      {
        "title": "Youth Music in Galleria",
        "data": "Jan 12, 2019",
        "location": "Greenfields, Sector 42, Faridabad",
        "png": "assets/22.png",
      },
    ];

    List items3 = [
      {
        "nome": "Concert",
        "svg": "assets/microfone.svg",
      },
      {
        "nome": "Sports",
        "svg": "assets/ping-pong.svg",
      },
      {
        "nome": "Education",
        "svg": "assets/education.svg",
      },
    ];

    List items2 = [
      {
        "dia": "10",
        "nome": "Sun",
        "selecionado": false,
      },
      {
        "dia": "11",
        "nome": "Mon",
        "selecionado": false,
      },
      {
        "dia": "12",
        "nome": "Tue",
        "selecionado": true,
      },
      {
        "dia": "13",
        "nome": "Wed",
        "selecionado": false,
      },
      {
        "dia": "14",
        "nome": "Thu",
        "selecionado": false,
      },
      {
        "dia": "15",
        "nome": "Fri",
        "selecionado": false,
      },
      {
        "dia": "16",
        "nome": "Sat",
        "selecionado": false,
      },
    ];

    List<BottomNavyBarItem> items = [
      BottomNavyBarItem(
        icon: Icon(
          Icons.home,
          color: Color(0xFFFFA700),
        ),
        title: Text(
          'Home',
          style: TextStyle(
            color: Color(0xFFFFA700),
          ),
        ),
        activeColor: Colors.black,
        textAlign: TextAlign.center,
      ),
      BottomNavyBarItem(
        icon: Icon(
          Icons.search,
          color: Colors.white,
        ),
        title: Text(
          'Search',
          style: TextStyle(
            color: Color(0xFFFFA700),
          ),
        ),
        activeColor: Colors.black,
        textAlign: TextAlign.center,
      ),
      BottomNavyBarItem(
        icon: Icon(
          Icons.star_border,
          color: Colors.white,
        ),
        title: Text(
          'Home',
          style: TextStyle(
            color: Color(0xFFFFA700),
          ),
        ),
        activeColor: Colors.black,
        textAlign: TextAlign.center,
      ),
    ];

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 0,
        title: Row(
          children: <Widget>[
            SvgPicture.asset(
              "assets/logo.svg",
              height: 30,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "UVE",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            Text(
              "NTO",
              style: TextStyle(
                color: Color(0xFFFFA700),
                fontSize: 30,
              ),
            ),
          ],
        ),
        actions: <Widget>[
          SvgPicture.asset(
            "assets/sino.svg",
          ),
          SizedBox(
            width: 15,
          ),
          SvgPicture.asset(
            "assets/menu.svg",
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 15,
          ),
          ListTile(
            title: Text(
              "Hello, Geralt !",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              "Let's explore what’s happening nearby",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Image.asset(
              "assets/1511.png",
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              width: 330,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 47,
                    height: 67,
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          items2[0]["dia"],
                          style: TextStyle(
                            color: Color(0xFFD8D9DB),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          items2[0]["nome"],
                          style: TextStyle(
                            color: Color(0xFFD8D9DB),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 47,
                    height: 67,
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          items2[1]["dia"],
                          style: TextStyle(
                            color: Color(0xFFD8D9DB),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          items2[1]["nome"],
                          style: TextStyle(
                            color: Color(0xFFD8D9DB),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 47,
                    height: 67,
                    padding: EdgeInsets.all(8.0),
                    decoration: items2[2]["selecionado"]
                        ? BoxDecoration(
                            color: Color(0xFFFCCD00),
                            borderRadius: BorderRadius.circular(8),
                          )
                        : null,
                    child: Column(
                      children: <Widget>[
                        Text(
                          items2[2]["dia"],
                          style: TextStyle(
                            color: items2[2]["selecionado"]
                                ? Colors.black
                                : Color(0xFFD8D9DB),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          items2[2]["nome"],
                          style: TextStyle(
                            color: items2[2]["selecionado"]
                                ? Colors.black
                                : Color(0xFFD8D9DB),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 47,
                    height: 67,
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          items2[3]["dia"],
                          style: TextStyle(
                            color: Color(0xFFD8D9DB),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          items2[3]["nome"],
                          style: TextStyle(
                            color: Color(0xFFD8D9DB),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 47,
                    height: 67,
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          items2[4]["dia"],
                          style: TextStyle(
                            color: Color(0xFFD8D9DB),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          items2[4]["nome"],
                          style: TextStyle(
                            color: Color(0xFFD8D9DB),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 47,
                    height: 67,
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          items2[5]["dia"],
                          style: TextStyle(
                            color: Color(0xFFD8D9DB),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          items2[5]["nome"],
                          style: TextStyle(
                            color: Color(0xFFD8D9DB),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 47,
                    height: 67,
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          items2[6]["dia"],
                          style: TextStyle(
                            color: Color(0xFFD8D9DB),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          items2[6]["nome"],
                          style: TextStyle(
                            color: Color(0xFFD8D9DB),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 18.0),
            child: Text(
              "All Events",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            height: 100,
            margin: EdgeInsets.only(left: 8.0),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: items3.length,
              itemBuilder: (_, index) {
                return Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  width: 129,
                  height: 102,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Color(0xFF29404E),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SvgPicture.asset(items3[index]["svg"]),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(items3[index]["nome"])
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 18.0),
            child: Text(
              "Popular Events",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 8.0),
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: items4.length,
                itemBuilder: (_, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    height: 98,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Color(0xFF29404E),
                    ),
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 98,
                          width: 252,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 14.0),
                            child: ListTile(
                              title: Text(
                                items4[index]["title"],
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        SvgPicture.asset(
                                          "assets/calendar.svg",
                                          width: 10,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          items4[index]["data"],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        SvgPicture.asset(
                                          "assets/location.svg",
                                          width: 10,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          items4[index]["location"],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 98,
                          width: 104,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(8.0),
                              bottomRight: Radius.circular(8.0),
                            ),
                            image: DecorationImage(
                              image: AssetImage(items4[index]["png"]),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavyBar(
        backgroundColor: Color(0xFF152F3E),
        onItemSelected: (index) {},
        items: items,
      ),
    );
  }
}
