// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'community_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommunityModel _$CommunityModelFromJson(Map<String, dynamic> json) =>
    CommunityModel(
      title: json['title'] as String,
      description: json['description'] as String,
      author: json['author'] as String,
      image: json['image'] as String,
      date: json['date'] as String? ?? 'n',
    );

Map<String, dynamic> _$CommunityModelToJson(CommunityModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'image': instance.image,
      'author': instance.author,
      'date': instance.date,
    };
