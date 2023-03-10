import 'package:flutter/material.dart';

Widget MyContainersList (
  {
required String text,
required String date,
required color1 ,
  })
  {
    return Container(
                        height: 60,
                        decoration: BoxDecoration(
                            color: color1,
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  [
                              Text(text,
                                  style: TextStyle(fontSize: 18)),
                              Text(date),
                            ],
                          ),
                        ),
                      );
  }

  