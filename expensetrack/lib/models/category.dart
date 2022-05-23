import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';
part 'category.g.dart';

@freezed
class Category with _$Category {
  factory Category
({
    /// The ID of the category.
    /// 
    /// Will be ignored when writing.
    required int? id,
    
    /// The name of the category.
    /// 
    /// Max 40 characters.
    required String name,
    
    /// The category description.
    /// 
    /// Max 255 characters.
    required String? description,
		
    /// Whether the transactions in this category are internal.
    /// 
    /// Internal transactions will not be included in certain statistics.
    required bool internal,
  }) = _Category
;

factory Category.fromJson(Map<String, dynamic> json) => 
_$CategoryFromJson(json);
}