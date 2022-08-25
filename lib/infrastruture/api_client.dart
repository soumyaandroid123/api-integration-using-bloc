// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';
import 'package:http/http.dart' as http;
import 'decoders.dart';
import 'endpoints.dart';
import 'failure/failure.dart';
import '../core/utils/headers.dart';
import '../domain/models/base-response/base_response.dart';

/// Custom Client for API calls with prefix Headers, URI
/// and Failures
class ApiClient {
  ///* GET Request
  static Future<BaseResponse> get(
    String endpoint,
  ) async {
    http.Response? response;
    try {
      response = await http
          .get(
            getUri(endpoint),
            headers: getHeaders(),
          )
          .timeout(timeLimit);

      if (response.statusCode == 200) {
        final baseResponse = Decoders.decodeBaseResponse(response.bodyBytes);
        if (baseResponse.success != null && baseResponse.success!) {
          return baseResponse;
        } else {
          throw Failure.serverError(
            message: baseResponse.displayMessage ?? '',
          );
        }
      } else {
        throw Failure.serverError(
          code: response.statusCode,
          message: response.reasonPhrase,
          response: Decoders.decodeBaseResponse(response.bodyBytes),
        );
      }
    } on SocketException catch (_) {
      throw const Failure.connection();
    } on ServerError catch (e) {
      throw Failure.serverError(
        code: e.code,
        message: e.message,
        response: response != null
            ? Decoders.decodeBaseResponse(response.bodyBytes)
            : null,
      );
    } catch (e) {
      throw Failure.unexpected(
        e.toString(),
      );
    }
  }

  ///* POST Request
  static Future<BaseResponse> post(
    String endpoint, {
    Object? body,
  }) async {
    http.Response? response;
    try {
      response = await http
          .post(
            getUri(endpoint),
            body: body,
            headers: getHeaders(),
          )
          .timeout(timeLimit);

      if (response.statusCode == 200) {
        final baseResponse = Decoders.decodeBaseResponse(response.bodyBytes);
        if (baseResponse.success != null && baseResponse.success!) {
          return baseResponse;
        } else {
          throw Failure.serverError(
            message: baseResponse.displayMessage ?? '',
          );
        }
      } else {
        throw Failure.serverError(
          code: response.statusCode,
          message: response.reasonPhrase,
          response: Decoders.decodeBaseResponse(response.bodyBytes),
        );
      }
    } on SocketException catch (e) {
      throw const Failure.connection();
    } on ServerError catch (e) {
      throw Failure.serverError(
        code: e.code,
        message: e.message,
        response: response != null
            ? Decoders.decodeBaseResponse(response.bodyBytes)
            : null,
      );
    } catch (e) {
      throw Failure.unexpected(
        e.toString(),
      );
    }
  }

  ///* Multipart Request
  static Future<BaseResponse> multipartRequest(
    String endpoint, {
    Map<String, dynamic>? body,
    required List<MultipartRequestFileModel> files,
  }) async {
    http.Response? response;
    try {
      var request = new http.MultipartRequest(
        "POST",
        getUri(endpoint),
      );

      if (files.isNotEmpty) {
        final list = <http.MultipartFile>[];

        for (var i = 0; i < files.length; i++) {
          for (var file = 0; file < files[i].filePathsList.length; file++) {
            list.add(
              await http.MultipartFile.fromPath(
                files[i].fieldName,
                files[i].filePathsList[file],
              ),
            );
          }
        }

        request.files.addAll(list);
      }

      body?.forEach((key, value) {
        if (value is List) {
          for (var i = 0; i < value.length; i++) {
            request.fields['$key[$i]'] = '${value[i]}';
          }
        } else {
          request.fields[key] = value;
        }
      });

      request.headers['Content-Type'] = 'multipart/json';
      request.headers['Authorization'] = GlobalHeaders.headers.authToken;

      final streamedResponse = await request.send().timeout(timeLimit);
      response = await http.Response.fromStream(streamedResponse);

      if (response.statusCode == 200) {
        final baseResponse = Decoders.decodeBaseResponse(response.bodyBytes);
        if (baseResponse.success != null && baseResponse.success!) {
          return baseResponse;
        } else {
          throw Failure.serverError(
            message: baseResponse.displayMessage ?? '',
          );
        }
      } else {
        throw Failure.serverError(
          code: response.statusCode,
          message: response.reasonPhrase,
          response: Decoders.decodeBaseResponse(response.bodyBytes),
        );
      }
    } on SocketException catch (_) {
      throw const Failure.connection();
    } on ServerError catch (e) {
      throw Failure.serverError(
        code: e.code,
        message: e.message,
        response: response != null
            ? Decoders.decodeBaseResponse(response.bodyBytes)
            : null,
      );
    } catch (e) {
      throw Failure.unexpected(
        e.toString(),
      );
    }
  }

  ///* DELETE Request
  static Future<BaseResponse> delete(
    String endpoint, {
    Object? body,
  }) async {
    http.Response? response;
    try {
      response = await http
          .delete(
            getUri(endpoint),
            body: body,
            headers: getHeaders(),
          )
          .timeout(timeLimit);

      if (response.statusCode == 200) {
        final baseResponse = Decoders.decodeBaseResponse(response.bodyBytes);
        if (baseResponse.success != null && baseResponse.success!) {
          return baseResponse;
        } else {
          throw Failure.serverError(
            message: baseResponse.displayMessage ?? '',
          );
        }
      } else {
        throw Failure.serverError(
          code: response.statusCode,
          message: response.reasonPhrase,
          response: Decoders.decodeBaseResponse(response.bodyBytes),
        );
      }
    } on SocketException catch (_) {
      throw const Failure.connection();
    } on ServerError catch (e) {
      throw Failure.serverError(
        code: e.code,
        message: e.message,
        response: response != null
            ? Decoders.decodeBaseResponse(response.bodyBytes)
            : null,
      );
    } catch (e) {
      throw Failure.unexpected(
        e.toString(),
      );
    }
  }

  static Uri getUri(String endpoint) {
    if (Platform.isIOS) {
      return Uri.parse(
        '${Endpoints.baseUrl}IOS$endpoint',
      );
    } else if (Platform.isAndroid) {
      return Uri.parse(
        '${Endpoints.baseUrl}ANDROID$endpoint',
      );
    } else
      return Uri.parse('');
  }

  static Map<String, String> getHeaders() {
    return {
      'Content-Type': 'application/json',
      'Authorization': GlobalHeaders.headers.authToken,
    };
  }
}

/// API request timeout duration
const timeLimit = Duration(milliseconds: 30000);

class MultipartRequestFileModel {
  const MultipartRequestFileModel({
    required this.fieldName,
    required this.filePathsList,
  });

  final String fieldName;
  final List<String> filePathsList;
}
