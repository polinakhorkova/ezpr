import 'package:dio/dio.dart';
import 'package:ezpr/ezpr.dart' as ezpr;
import 'models/getProd/getProd.dart';

void main(List<String> arguments) async {
  Dio httpClient = Dio();
  String url = 'https: //dummyjson.com/products';
  var response = await httpClient.get(url);
  GetProd getProd = GetProd.fromJson(response.data);

  print(getProd);
}
