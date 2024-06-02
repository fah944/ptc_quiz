// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompImpl _$$CompImplFromJson(Map<String, dynamic> json) => _$CompImpl(
      isActive: (json['isActive'] as num).toInt(),
      name: json['name'] as String,
      addressModel: json['addressModel'] == null
          ? null
          : Address.fromJson(json['addressModel'] as Map<String, dynamic>),
      established: json['established'] as String,
      departments: (json['departments'] as List<dynamic>)
          .map((e) => Department.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CompImplToJson(_$CompImpl instance) =>
    <String, dynamic>{
      'isActive': instance.isActive,
      'name': instance.name,
      'addressModel': instance.addressModel,
      'established': instance.established,
      'departments': instance.departments,
    };
