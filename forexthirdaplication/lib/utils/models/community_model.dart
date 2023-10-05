import 'package:json_annotation/json_annotation.dart';

part 'community_model.g.dart';

@JsonSerializable()
class CommunityModel {
  final String title;
  final String description;
  final String image;
  final String author;
  final String date;

  const CommunityModel(
      {required this.title,
        required this.description,
        required this.author,
        required this.image,
        this.date = 'n'});

  factory CommunityModel.fromJson(Map<String, dynamic> json) => _$CommunityModelFromJson(json);

  Map<String, dynamic> toJson() => _$CommunityModelToJson(this);
}