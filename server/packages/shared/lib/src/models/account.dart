import 'package:freezed_annotation/freezed_annotation.dart';

part 'account.freezed.dart';
part 'account.g.dart';

@freezed
class Account with _$Account {
  factory Account({
    required String id,
    required String name,
    String? description,
  }) = _Account;

factory Account.fromJson(Map<String, dynamic> json) => 
_$AccountFromJson(json);
}