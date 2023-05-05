// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartItemSamples extends StatelessWidget {


  List imgList = [
    "Warm Jacket",
    "Black T-Shirt",
    "Black Pant",
  ];

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        for(int i=0; i<imgList.length; i++)
        Container(
          height: 110,
          margin: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 20,
          ),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Checkbox(
                activeColor: Color(0xFFFD725A),
                value: true,
                onChanged: (value) {},
              ),
              Container(
                height: 70,
                width: 70,
                margin: EdgeInsets.only(right: 15),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 224, 224, 244),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset("images/${imgList[i]}.png",
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      imgList[i],
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(0.7),
                      ),
                    ),
                    Text(
                      "Best Selling",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black.withOpacity(0.6),
                      ),
                    ),
                    Text(
                      "\$300.54",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFD725A)),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.delete,
                      color: Color(0xFFFD725A),
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Color(0xFFF7F8FA),
                            borderRadius: BorderRadius.circular(20),
                        ),
                          child: Icon(
                            CupertinoIcons.minus,
                            size: 18,
                            color: Colors.redAccent,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "01",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 5),
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Color(0xFFF7F8FA),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(
                            CupertinoIcons.add,
                            size: 18,
                            color: Colors.redAccent,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}