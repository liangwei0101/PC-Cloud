import 'dart:io';
import 'package:dio/dio.dart';

///  Http 工具类
/// @author Liang Wei
/// date 2019-11-03

class HttpUtil {
  /// global dio object
  static Dio dio;

  /// default options
  static const String API_PREFIX = 'http://192.168.0.111:7001';
  static const String FILE_UPLOAD_URL ="/upload";
  static const int CONNECT_TIMEOUT = 1000;
  static const int RECEIVE_TIMEOUT = 5000;

  /// http request methods
  static const String GET = 'get';
  static const String POST = 'post';
  static const String PUT = 'put';
  static const String PATCH = 'patch';
  static const String DELETE = 'delete';

  static Future<dynamic> uploadFile({data, callback}) async {
    var result;
    data = data ?? {};
    callback = callback ?? {};

    var dio = getInstance();

    try {
      Response response = await dio.request(FILE_UPLOAD_URL,
          data: data,
          options: new Options(method: 'POST'),
          onSendProgress: callback);
      result = response.data;
    } on DioError catch (e) {
      throw e;
    }

    return result;
  }

  // 基于dio封装的http请求
  static Future<dynamic> request(String url, {data, method}) async {
    data = data ?? {};
    method = method ?? 'GET';

    Dio dio = getInstance();

    /// 打印请求相关信息：请求地址、请求方式、请求参数
    // print('请求地址：【' + dio.options.baseUrl + url + '】');
    // print('请求参数：' + data.toString());

    var result;

    try {
      Response response = await dio.request(url,
          data: data,
          options: new Options(method: method), onSendProgress: (a, b) {
            print(a);
            print(b);
          });
      result = response.data;

      // /// 打印响应相关信息
    } on DioError catch (e) {
      /// 打印请求失败相关信息
      print('请求出错：' + e.toString());
    }

    return result;
  }

  /// 创建 dio 实例对象
  static Dio getInstance() {
    if (dio == null) {
      /// 全局属性：请求前缀、连接超时时间、响应超时时间
      BaseOptions option = new BaseOptions(
          baseUrl: API_PREFIX,
          connectTimeout: CONNECT_TIMEOUT,
          receiveTimeout: RECEIVE_TIMEOUT,
          headers: {'Content-Type': 'application/json'},
          contentType: ContentType.json.toString(),
          responseType: ResponseType.plain);

      dio = new Dio(option);
    }

    return dio;
  }

  /// 清空 dio 对象
  static clear() {
    dio = null;
  }
}