import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'account_login.g.dart';

@JsonSerializable()
class AccountLogin extends Equatable {
  final String email;
  final String password;

  const AccountLogin({
    required this.email,
    required this.password,
  });

  factory AccountLogin.fromJson(Map<String, dynamic> json) =>
      _$AccountLoginFromJson(json);

  Map<String, dynamic> toJson() => _$AccountLoginToJson(this);

  @override
  List<Object?> get props => [email, password];
}
