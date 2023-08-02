import 'package:freezed_annotation/freezed_annotation.dart';

part 'cities_query.g.dart';
part 'cities_query.freezed.dart';

//20230801 For parsing data from json
@Freezed()
class CitiesQueryData with _$CitiesQueryData{
  const factory CitiesQueryData({
    required Cities? cities
  }) =_CitiesQueryData;

  factory CitiesQueryData.fromJson(Map<String, dynamic> queryMap) => _$CitiesQueryDataFromJson(queryMap);
}

@Freezed()
class Cities with _$Cities{
  const factory Cities({
    required List<Edges>? edges,
  }) =_Cities;

  factory Cities.fromJson(Map<String, dynamic> queryMap) => _$CitiesFromJson(queryMap);
}

@Freezed()
class Edges with _$Edges{
  const factory Edges({
    required Node? node,
  }) =_Edges;

  factory Edges.fromJson(Map<String, dynamic> queryMap) => _$EdgesFromJson(queryMap);
}


@Freezed()
class Node with _$Node{
  const factory Node({
    required String? id,
    required String? name,
    required String? state,
    required String? stateCode,
    required String? county,
    required String? cityId
  }) =_Node;

  factory Node.fromJson(Map<String, dynamic> queryMap) => _$NodeFromJson(queryMap);
}