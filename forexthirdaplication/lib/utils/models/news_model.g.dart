// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsModel _$NewsModelFromJson(Map<String, dynamic> json) => NewsModel(
      title: json['title'] as String,
      description: json['description'] as String,
      image: json['image'] as String,
      date: json['date'] as String? ?? 'n',
    );

Map<String, dynamic> _$NewsModelToJson(NewsModel instance) => <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'image': instance.image,
      'date': instance.date,
    };
