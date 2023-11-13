
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:untitled1/core/network/api_helper.dart';


import '../../core/utils/config.dart';

abstract class AppDataSource {


  Future<List<String>> getList({required int offset});




}

@LazySingleton(as: AppDataSource)
class AppDataSourceImpl extends AppDataSource {
  final ApiHelper _apiHelper;

  AppDataSourceImpl(this._apiHelper);




  @override
  Future<List<String>> getList({required int offset}) async {
    final response = await _apiHelper.request('$apiPath/test/list?limit=10&offset=$offset');
    return List<String>.from(
        (response.data as Map<String, dynamic>)['data'].map((e) => e).toList());
  }




}

extension Responseee on Response<dynamic> {
  Map<String, dynamic> dataAsMap() => (data as Map<String, dynamic>);

  bool hasData() => data['data'] is Map<String, dynamic>;

  bool isSuccessFull() => (data as Map<String, dynamic>)['success'];
}
