import 'dart:convert';
import 'dart:typed_data';
import 'failure/failure.dart';
import '../domain/models/base-response/base_response.dart';

class Decoders {
  const Decoders._();

  static BaseResponse decodeBaseResponse(Uint8List bodyBytes) {
    try {
      final data = json.decode(
        utf8.decode(bodyBytes),
      ) as Map;

      final baseResponse = BaseResponse.fromJson(data as Map<String, dynamic>);
      return baseResponse;
    } catch (e) {
      throw Failure.value(e.toString());
    }
  }
}
