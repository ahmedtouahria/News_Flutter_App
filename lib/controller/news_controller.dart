import 'package:flutter/material.dart';
import 'package:flutter_application_1/networking/news_services.dart';
import 'package:get/get.dart';
import 'package:chopper/chopper.dart' as h;
class NewsController extends GetxController {
  NewsApiSports? news_sports;
  NewsApIGeneral? news_general;
  NewsApISciences? news_sciences;

  late Future<h.Response> newsSports;
  late Future<h.Response> newsGeneral;
  late Future<h.Response> newsSciences;

  final Color primaryColor =  Colors.blueGrey;
  final Color secColor = const Color.fromARGB(255, 149, 173, 185);
  @override
  void onInit() {
    super.onInit();
    news_sports=NewsApiSports.create();
    newsSports=news_sports!.getAllSportsNews();
    ////////////////////
     news_general=NewsApIGeneral.create();
    newsGeneral=news_general!.getAlIGeneralNews();
    ////////////////////
    /// news_sports=NewsApiSports.create();
       news_sciences=NewsApISciences.create();
       newsSciences=news_sciences!.getAlISciencesNews();

  }
}