import 'package:flutter/material.dart';

class MduHearing extends StatefulWidget {
  const MduHearing({Key? key}) : super(key: key);

  @override
  State<MduHearing> createState() => _MduRe_HearingState();
}

class _MduRe_HearingState extends State<MduHearing> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (child, index) {
          return hearingItem();
        },
        itemCount: 5,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        padding: EdgeInsets.all(3),
      ),
    );
  }

  hearingItem() {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Container(padding: EdgeInsets.all(3),

        width: size.width,
        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10),
            boxShadow: <BoxShadow>[
              BoxShadow(color: Colors.black12, blurRadius: 3, spreadRadius: 2)
            ]),
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "CONDUCT 10.7.23",
                      style: TextStyle(color: Colors.redAccent, fontSize: 15),
                    ), Container(
                        decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Text("New",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500)),
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                          "Unfair Means Cases of Btech 2,6,7,8 and MA 2,3,4 semester/year held in May 2023,the meeting will be held on 17-07-2023 at 9.30 A.M",
                          style: TextStyle(color: Colors.black)),
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.cyan),
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Text("Dated:3 days ago",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
