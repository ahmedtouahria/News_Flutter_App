// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_services.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$NewsApiSports extends NewsApiSports {
  _$NewsApiSports([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = NewsApiSports;

  @override
  Future<Response<dynamic>> getAllSportsNews() {
    final $url =
        '/v2/top-headlines?country=eg&category=sports&apiKey=2a774b30f4754f2ebaf04223f71a9a5b';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getNewsId(int id) {
    final $url =
        '/v2/top-headlines?country=eg&category=sports&apiKey=2a774b30f4754f2ebaf04223f71a9a5b/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$NewsApIGeneral extends NewsApIGeneral {
  _$NewsApIGeneral([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = NewsApIGeneral;

  @override
  Future<Response<dynamic>> getAlIGeneralNews() {
    final $url =
        '/v2/top-headlines?country=eg&category=general&apiKey=2a774b30f4754f2ebaf04223f71a9a5b';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getNewsId(int id) {
    final $url =
        '/v2/top-headlines?country=eg&category=general&apiKey=2a774b30f4754f2ebaf04223f71a9a5b/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$NewsApISciences extends NewsApISciences {
  _$NewsApISciences([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = NewsApISciences;

  @override
  Future<Response<dynamic>> getAlISciencesNews() {
    final $url =
        '/v2/top-headlines?country=eg&category=health&apiKey=2a774b30f4754f2ebaf04223f71a9a5b';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getNewsId(int id) {
    final $url =
        '/v2/top-headlines?country=eg&category=health&apiKey=2a774b30f4754f2ebaf04223f71a9a5b/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }
}
