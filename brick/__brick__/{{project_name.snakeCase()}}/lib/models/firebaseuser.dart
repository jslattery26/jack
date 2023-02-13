import 'package:freezed_annotation/freezed_annotation.dart';

part 'firebaseuser.freezed.dart';
part 'firebaseuser.g.dart';

@freezed
class FirebaseUser with _$FirebaseUser {
  factory FirebaseUser({
    String? uid,
  }) = _FirebaseUser;

  factory FirebaseUser.fromJson(Map<String, dynamic> json) =>
      _$FirebaseUserFromJson(json);
}
