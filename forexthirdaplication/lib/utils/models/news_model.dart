import 'package:json_annotation/json_annotation.dart';
part 'news_model.g.dart';


@JsonSerializable()
class NewsModel {
  final String title;
  final String description;
  final String image;
  final String date;

  const NewsModel(
      {required this.title,
      required this.description,
      required this.image,
      this.date = 'n'});

  /// factory.
  factory NewsModel.fromJson(Map<String, dynamic> json) => _$NewsModelFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$NewsModelToJson(this);
}
