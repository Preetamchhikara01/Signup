import 'package:flutter/material.dart';

class MduHomepage extends StatefulWidget {
  const MduHomepage({Key? key}) : super(key: key);

  @override
  State<MduHomepage> createState() => _MduHomepageState();
}

class _MduHomepageState extends State<MduHomepage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            )),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("assets/images/mdulogo.jpg",
                height: 30, width: 30, fit: BoxFit.fill),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "MAHARSHI DAYANAND UNIVERSITY",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      letterSpacing: 1),
                ),
                Row(
                  children: [
                    Text("ROHTAK",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                            letterSpacing: 1)),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        "(Beta Version)",
                        style: TextStyle(
                            color: Colors.white54,
                            fontWeight: FontWeight.bold,
                            fontSize: 8,
                            letterSpacing: 1),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
              ))
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  "assets/images/mdugate.jpg",
                  height: size.height / 3,
                  width: size.width,
                  fit: BoxFit.fill,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Image.asset("assets/images/naaclogo.jpg",
                              height: 40, width: 40, fit: BoxFit.contain),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Image.asset("assets/images/swach.jpg",
                              width: 40, height: 40, fit: BoxFit.fill),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Image.asset("assets/images/olympic.png",
                              height: 40, width: 40, fit: BoxFit.fill),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Image.asset("assets/images/nirf.png",
                              width: 40, height: 40, fit: BoxFit.fill),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            decoration: BoxDecoration(color: Colors.black12),
                            child: Text(
                                "A+ Grade University Accredited by NAAC",
                                style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: size.width,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.black12, spreadRadius: 3, blurRadius: 3)
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            "assets/images/logo.jpg",
                            height: 40,
                            width: 40,
                            fit: BoxFit.fill,
                          ),
                          Text(
                            "236+",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Programmes",
                            style: TextStyle(color: Colors.black38),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(
                            "assets/images/logo.jpg",
                            height: 40,
                            width: 40,
                            fit: BoxFit.fill,
                          ),
                          Text(
                            "2 lac +",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Students",
                            style: TextStyle(color: Colors.black38),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(
                            "assets/images/logo.jpg",
                            height: 40,
                            width: 40,
                            fit: BoxFit.fill,
                          ),
                          Text(
                            "622 Acre",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Spread Campus",
                            style: TextStyle(color: Colors.black38),
                          ),
                        ],
                      ),
                    ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "ADMINISTRATION",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 18),
              ),
            ),
            Container(
              height: size.height / 3,
              child: ListView.builder(
                itemBuilder: (child, index) {
                  return AdminItem();
                },
                itemCount: 4,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.all(3),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0, right: 5),
              child: Container(
                width: size.width,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          blurRadius: 3, spreadRadius: 3, color: Colors.black12)
                    ],
                    color: Colors.white54),
                child: Column(
                  children: [
                    Text(
                      "Rohtak,Haryana,India",
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/climate.png"))),
                            ),
                            Text(
                              "Partly cloudy",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            )
                          ],
                        ),
                        Text("36°C",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20)),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Wind: 15 kmph",
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Precip: 0 mm",
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Pressure: 999 mb",
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Feels like: 40 °C",
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Please update your course",
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                width: size.width,
                height: size.height / 3,
                decoration: BoxDecoration(
                    color: Colors.white70,
                    shape: BoxShape.rectangle,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.black12, blurRadius: 3, spreadRadius: 3)
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {
                              print("Clicking on news button");
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  "assets/images/news.png",
                                  height: 40,
                                  width: 40,
                                ),
                                Text(
                                  "News",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  "assets/images/news.png",
                                  height: 40,
                                  width: 40,
                                ),
                                Text(
                                  "Events",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  "assets/images/news.png",
                                  height: 40,
                                  width: 40,
                                ),
                                Text(
                                  "Gallery",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  "assets/images/news.png",
                                  height: 40,
                                  width: 40,
                                ),
                                Text(
                                  "Results",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  "assets/images/news.png",
                                  height: 40,
                                  width: 40,
                                ),
                                Text(
                                  "Digital I-Card",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  "assets/images/news.png",
                                  height: 40,
                                  width: 40,
                                ),
                                Text(
                                  "Courses",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  "assets/images/news.png",
                                  height: 40,
                                  width: 40,
                                ),
                                Text(
                                  "Datesheet",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  "assets/images/news.png",
                                  height: 40,
                                  width: 40,
                                ),
                                Text(
                                  "UMC",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  "assets/images/news.png",
                                  height: 40,
                                  width: 40,
                                ),
                                Text(
                                  "Exams",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.black12, blurRadius: 3, spreadRadius: 3)
                    ]),
                width: size.width,
                height: size.height / 2.5,
                child: ListView.builder(
                    itemBuilder: (child, index) {
                      return AlumniItem();
                    },
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "GLIMPSES",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            Container(
              height: size.height / 4,
              decoration: BoxDecoration(shape: BoxShape.rectangle),
              alignment: Alignment.centerLeft,
              child: ListView.builder(
                itemBuilder: (child, index) {
                  return GlimpsesItem();
                },
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 4,
                physics: BouncingScrollPhysics(),
              ),
            ),
            Container(
              width: size.width,
              height: size.height / 5,
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                      image: AssetImage("assets/images/electricity.jpg")),
                  boxShadow: <BoxShadow>[
                    BoxShadow(color: Colors.black12, spreadRadius: 10)
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text(
                "IT TECHNOLOGY PARTNERS",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1),
              ),
            ),
            Container(
              height: size.height / 4,
              child: ListView.builder(
                itemBuilder: (item, child) {
                  return PartnerItem();
                },
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemCount: 4,
              ),
            ),
            Container(
                width: size.width,
                height: size.height / 3,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/images/blur.jpg",
                        ),
                        fit: BoxFit.cover)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20.0, left: 8, right: 5),
                          child: Container(
                            width: size.width / 3,
                            height: size.height / 6,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/map.jpg"))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 28.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Telephone - 01262-274640",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "Email - contact@mdurohtak.ac.in",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "Fax-01262-274640",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "website-http://mdu.ac.in",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Text(
                      "Copyright@ MDU Rohtak, All Rights Reserved",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "Meet the team!",
                      style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.white),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }

  PartnerItem() {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 2,
      width: size.width / 2,
      decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage("assets/images/microsoft.png"))),
    );
  }

  GlimpsesItem() {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(right: 12.0, top: 8),
      child: Container(
        width: size.width / 2,
        height: size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
          "assets/images/library.jpg",
        ))),
      ),
    );
  }

  AlumniItem() {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 4,
      width: size.width,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.white,
      ),
      child: Column(children: [
        Text(
          "ALUMNI SPEAKS",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage("assets/images/yuvraj.jpg")))),
          ),
          Flexible(
            child: Text(
              "It gives me immense pride to affiliate with MDU,rohtak as my almater. I owe my success and professional accomplishment to the strong value system and professionals serving at the university. there is no exggeration to say that it's one of te _",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 10,
                  fontWeight: FontWeight.bold),
            ),
          )
        ]),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/calendar.jpg",
                  height: 40,
                  width: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "MDU CALENDAR",
                    style: TextStyle(
                        color: Colors.black,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                )
              ]),
        ),
      ]),
    );
  }

  AdminItem() {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: size.height / 2.5,
        width: size.width / 3,
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.only(topRight: Radius.circular(40)),
            image: DecorationImage(
              image: AssetImage("assets/images/rajbir.jpg"),
              fit: BoxFit.fill,
            )),
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Container(
            width: size.width / 2,
            decoration: BoxDecoration(
              color: Colors.black87,
            ),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                  "HIS EXCELLENCY SHRI BANDARU DATTATRAYA, GOVERNOR,HARYANA chancellor",
                  style: TextStyle(color: Colors.white, fontSize: 10)),
            ),
          )
        ]),
      ),
    );
  }
}
