import 'package:equatable/equatable.dart';

class GlobalHeaders extends Equatable {
  static Headers headers = Headers.empty();

  @override
  List<Object> get props => [headers];
}

class Headers extends Equatable {
  const Headers({
    required this.id,
    required this.token,
    required this.tokenProvider,
    required this.firebaseDeviceId,
    this.authToken = '',
  });

  factory Headers.empty() => const Headers(
        id: '',
        token: '',
        tokenProvider: '',
        firebaseDeviceId: '',
        authToken: '',
      );

  final String id;
  final String token;
  final String tokenProvider;
  final String firebaseDeviceId;
  final String authToken;

  Headers copyWith({
    String? id,
    String? token,
    String? tokenProvider,
    String? firebaseDeviceId,
    String? authToken,
  }) {
    return Headers(
      id: id ?? this.id,
      token: token ?? this.token,
      tokenProvider: tokenProvider ?? this.tokenProvider,
      firebaseDeviceId: firebaseDeviceId ?? this.firebaseDeviceId,
      authToken: authToken ?? this.authToken,
    );
  }

  @override
  String toString() {
    return '''
Headers(
  id: $id,
  token: $token,
  tokenProvider: $tokenProvider,
  firebaseDeviceId: $firebaseDeviceId,
)''';
  }

  @override
  List<Object> get props {
    return [
      id,
      token,
      tokenProvider,
      firebaseDeviceId,
      authToken,
    ];
  }
}
