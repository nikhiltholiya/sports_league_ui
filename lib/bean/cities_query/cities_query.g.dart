// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cities_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CitiesQueryData _$$_CitiesQueryDataFromJson(Map<String, dynamic> json) =>
    _$_CitiesQueryData(
      cities: json['cities'] == null
          ? null
          : Cities.fromJson(json['cities'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CitiesQueryDataToJson(_$_CitiesQueryData instance) =>
    <String, dynamic>{
      'cities': instance.cities,
    };

_$_Cities _$$_CitiesFromJson(Map<String, dynamic> json) => _$_Cities(
      edges: (json['edges'] as List<dynamic>?)
          ?.map((e) => Edges.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CitiesToJson(_$_Cities instance) => <String, dynamic>{
      'edges': instance.edges,
    };

_$_Edges _$$_EdgesFromJson(Map<String, dynamic> json) => _$_Edges(
      node: json['node'] == null
          ? null
          : Node.fromJson(json['node'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_EdgesToJson(_$_Edges instance) => <String, dynamic>{
      'node': instance.node,
    };

_$_Node _$$_NodeFromJson(Map<String, dynamic> json) => _$_Node(
      id: json['id'] as String?,
      name: json['name'] as String?,
      state: json['state'] as String?,
      stateCode: json['stateCode'] as String?,
      county: json['county'] as String?,
      cityId: json['cityId'] as String?,
    );

Map<String, dynamic> _$$_NodeToJson(_$_Node instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'state': instance.state,
      'stateCode': instance.stateCode,
      'county': instance.county,
      'cityId': instance.cityId,
    };
