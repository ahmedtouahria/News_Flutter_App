import 'package:chopper/chopper.dart' ;
import 'package:get/get.dart' as g;
import '../controller/news_controller.dart';
part 'news_services.chopper.dart';
NewsController controller = g.Get.find();
 //String cat=controller.;

@ChopperApi(baseUrl:'/v2/top-headlines?country=eg&category=sports&apiKey=2a774b30f4754f2ebaf04223f71a9a5b')
abstract class NewsApiSports extends ChopperService {
  
@Get()
 Future<Response>getAllSportsNews();
@Get(path: '/{id}')
Future<Response>getNewsId(@Path() int id);
static NewsApiSports create(){
  final client = ChopperClient(
   baseUrl: 'https://newsapi.org',
   services: [_$NewsApiSports()],
   converter: const JsonConverter());
  return _$NewsApiSports(client);
}
}

/////////////////////////////////////////////////////////

@ChopperApi(baseUrl:'/v2/top-headlines?country=eg&category=general&apiKey=2a774b30f4754f2ebaf04223f71a9a5b')
abstract class NewsApIGeneral extends ChopperService {
  
@Get()
 Future<Response>getAlIGeneralNews();
@Get(path: '/{id}')
Future<Response>getNewsId(@Path() int id);
static NewsApIGeneral create(){
  final client = ChopperClient(
   baseUrl: 'https://newsapi.org',
   services: [_$NewsApIGeneral()],
   converter: const JsonConverter());
  return _$NewsApIGeneral(client);
}
}
@ChopperApi(baseUrl:'/v2/top-headlines?country=eg&category=health&apiKey=2a774b30f4754f2ebaf04223f71a9a5b')
abstract class NewsApISciences extends ChopperService {
  
@Get()
 Future<Response>getAlISciencesNews();
@Get(path: '/{id}')
Future<Response>getNewsId(@Path() int id);
static NewsApISciences create(){
  final client = ChopperClient(
   baseUrl: 'https://newsapi.org',
   services: [_$NewsApISciences()],
   converter: const JsonConverter());
  return _$NewsApISciences(client);
}
}

