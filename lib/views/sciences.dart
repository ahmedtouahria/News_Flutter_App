import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/sprts.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import '../controller/news_controller.dart';
import 'package:chopper/chopper.dart' as h;
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'home.dart';

class Sciences extends GetWidget {
  @override
  NewsController controller = Get.put(NewsController());
  final controll = Get.lazyPut(() => NewsController());

  final String title = '  أخبار العلوم والتكنولوجيا ';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(title),
          backgroundColor: controller.primaryColor,
          elevation: 1,
          toolbarHeight: 80),
      drawer: const Drawer(),
      body: FutureBuilder<h.Response>(
        future: controller.newsSciences,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            // print(snapshot.data?.bodyString);
            final List todos =
                jsonDecode(snapshot.data!.bodyString)['articles'];
          //  print(todos);
            return ListView.builder(
                itemCount: todos.length,
                itemBuilder: (context, int index) {
                  return Container(
                    width: 100,
                    // height: 200,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromARGB(20, 0, 0, 0),
                              blurRadius: 40,
                              blurStyle: BlurStyle.inner,
                              spreadRadius: 2.5,
                              offset: Offset(0, 0))
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Stack(children: [
                          Shimmer.fromColors(
                              child: Container(
                                  width: 350, height: 170, color: Colors.white),
                              baseColor: Colors.grey[300]!,
                              highlightColor: Colors.grey[100]!),
                          /* Image.network(
                              todos[index]['urlToImage'].toString(),
                              errorBuilder: ((context, error, stackTrace) =>
                                  const Place()),
                            ), */
                        ]),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(todos[index]['title'].toString()),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(todos[index]['description'].toString(),
                            style: TextStyle(
                              color: controller.secColor,
                            )),
                      ]),
                    ),
                  );
                });
          } else if (snapshot.hasError) {
            return Column(
              children: const [
                ListTile(title: Place()),
                ListTile(title: Place()),
                ListTile(title: Place()),
              ],
            );
          }
          return Column(
            children: const [
              ListTile(title: Place()),
              ListTile(title: Place()),
              ListTile(title: Place()),
            ],
          );
        },
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: 1,
        backgroundColor: controller.primaryColor,
        height: 65,
        animationDuration: const Duration(milliseconds: 500),
        items: const <Widget>[
          Icon(Icons.sports_football_sharp, size: 30),
          Icon(Icons.book_online, size: 30),
          Icon(Icons.home, size: 30),
        ],
        onTap: (index) {
          //Navigation with GetX
          if (index == 0) {
            Get.to(() => Home());
          } else if (index == 1) {
            //  Get.to(()=>Sciences());
          } else if (index == 2) {
            Get.to(() => Sports());
          }

          //Handle button tap
        },
      ),
    );
  }
}

// place_holder whene the images or data is on hold 
// we used package <shimmer> to decorate or design placeholders
