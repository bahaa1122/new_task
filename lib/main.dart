import 'package:flutter/material.dart';


import 'comp/comp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NotePad',
      home: SafeArea(
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.amber,
              child: const Icon(Icons.add,size: 50,color: Colors.black,)),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    'Notepad',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 2),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(30.0)),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: const BorderSide(
                                  width: 0.8, color: Colors.grey),
                            ),
                            hintText: 'Search notes',
                            prefixIcon: const Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        MyContainersList(text: 'Toydays grocery list',date: 'June 22,2023 05:55 PM',color1: const Color.fromARGB(255, 197, 255, 199),),
                        
                        const SizedBox(
                          height: 20,
                        ),
                        MyContainersList(text: 'Tomorrow grocery list',date: 'June 23,2023 08:05 PM',color1: const Color.fromARGB(255, 244, 255, 197),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
