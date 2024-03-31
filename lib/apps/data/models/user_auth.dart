import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_auth.g.dart';
part 'user_auth.freezed.dart';

@freezed
class UserAuth with _$UserAuth {

  const factory UserAuth({
    required String userId,
    required String name,
    required String password,
    required String token,
  }) = _UserAuth;

  factory UserAuth.fromJson(Map<String, dynamic> json) => _$UserAuthFromJson(json);
}
