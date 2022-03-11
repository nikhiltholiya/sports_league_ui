// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'league_stat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LeagueStatData _$LeagueStatDataFromJson(Map<String, dynamic> json) {
  return _LeagueStatData.fromJson(json);
}

/// @nodoc
class _$LeagueStatDataTearOff {
  const _$LeagueStatDataTearOff();

  _LeagueStatData call({required LeagueStat? leagueStat}) {
    return _LeagueStatData(
      leagueStat: leagueStat,
    );
  }

  LeagueStatData fromJson(Map<String, Object?> json) {
    return LeagueStatData.fromJson(json);
  }
}

/// @nodoc
const $LeagueStatData = _$LeagueStatDataTearOff();

/// @nodoc
mixin _$LeagueStatData {
  LeagueStat? get leagueStat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeagueStatDataCopyWith<LeagueStatData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeagueStatDataCopyWith<$Res> {
  factory $LeagueStatDataCopyWith(
          LeagueStatData value, $Res Function(LeagueStatData) then) =
      _$LeagueStatDataCopyWithImpl<$Res>;
  $Res call({LeagueStat? leagueStat});

  $LeagueStatCopyWith<$Res>? get leagueStat;
}

/// @nodoc
class _$LeagueStatDataCopyWithImpl<$Res>
    implements $LeagueStatDataCopyWith<$Res> {
  _$LeagueStatDataCopyWithImpl(this._value, this._then);

  final LeagueStatData _value;
  // ignore: unused_field
  final $Res Function(LeagueStatData) _then;

  @override
  $Res call({
    Object? leagueStat = freezed,
  }) {
    return _then(_value.copyWith(
      leagueStat: leagueStat == freezed
          ? _value.leagueStat
          : leagueStat // ignore: cast_nullable_to_non_nullable
              as LeagueStat?,
    ));
  }

  @override
  $LeagueStatCopyWith<$Res>? get leagueStat {
    if (_value.leagueStat == null) {
      return null;
    }

    return $LeagueStatCopyWith<$Res>(_value.leagueStat!, (value) {
      return _then(_value.copyWith(leagueStat: value));
    });
  }
}

/// @nodoc
abstract class _$LeagueStatDataCopyWith<$Res>
    implements $LeagueStatDataCopyWith<$Res> {
  factory _$LeagueStatDataCopyWith(
          _LeagueStatData value, $Res Function(_LeagueStatData) then) =
      __$LeagueStatDataCopyWithImpl<$Res>;
  @override
  $Res call({LeagueStat? leagueStat});

  @override
  $LeagueStatCopyWith<$Res>? get leagueStat;
}

/// @nodoc
class __$LeagueStatDataCopyWithImpl<$Res>
    extends _$LeagueStatDataCopyWithImpl<$Res>
    implements _$LeagueStatDataCopyWith<$Res> {
  __$LeagueStatDataCopyWithImpl(
      _LeagueStatData _value, $Res Function(_LeagueStatData) _then)
      : super(_value, (v) => _then(v as _LeagueStatData));

  @override
  _LeagueStatData get _value => super._value as _LeagueStatData;

  @override
  $Res call({
    Object? leagueStat = freezed,
  }) {
    return _then(_LeagueStatData(
      leagueStat: leagueStat == freezed
          ? _value.leagueStat
          : leagueStat // ignore: cast_nullable_to_non_nullable
              as LeagueStat?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LeagueStatData implements _LeagueStatData {
  const _$_LeagueStatData({required this.leagueStat});

  factory _$_LeagueStatData.fromJson(Map<String, dynamic> json) =>
      _$$_LeagueStatDataFromJson(json);

  @override
  final LeagueStat? leagueStat;

  @override
  String toString() {
    return 'LeagueStatData(leagueStat: $leagueStat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LeagueStatData &&
            const DeepCollectionEquality()
                .equals(other.leagueStat, leagueStat));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(leagueStat));

  @JsonKey(ignore: true)
  @override
  _$LeagueStatDataCopyWith<_LeagueStatData> get copyWith =>
      __$LeagueStatDataCopyWithImpl<_LeagueStatData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LeagueStatDataToJson(this);
  }
}

abstract class _LeagueStatData implements LeagueStatData {
  const factory _LeagueStatData({required LeagueStat? leagueStat}) =
      _$_LeagueStatData;

  factory _LeagueStatData.fromJson(Map<String, dynamic> json) =
      _$_LeagueStatData.fromJson;

  @override
  LeagueStat? get leagueStat;
  @override
  @JsonKey(ignore: true)
  _$LeagueStatDataCopyWith<_LeagueStatData> get copyWith =>
      throw _privateConstructorUsedError;
}

LeagueStat _$LeagueStatFromJson(Map<String, dynamic> json) {
  return _LeagueStat.fromJson(json);
}

/// @nodoc
class _$LeagueStatTearOff {
  const _$LeagueStatTearOff();

  _LeagueStat call(
      {required String? leagueId,
      required String? name,
      required String? city,
      required String? state,
      required String? country,
      required String? startDate,
      required String? endDate,
      required String? level,
      required String? description,
      required String? status,
      required String? format,
      required String? winnerOneId,
      required String? winnerTwoId,
      required List<UserStat>? userStat}) {
    return _LeagueStat(
      leagueId: leagueId,
      name: name,
      city: city,
      state: state,
      country: country,
      startDate: startDate,
      endDate: endDate,
      level: level,
      description: description,
      status: status,
      format: format,
      winnerOneId: winnerOneId,
      winnerTwoId: winnerTwoId,
      userStat: userStat,
    );
  }

  LeagueStat fromJson(Map<String, Object?> json) {
    return LeagueStat.fromJson(json);
  }
}

/// @nodoc
const $LeagueStat = _$LeagueStatTearOff();

/// @nodoc
mixin _$LeagueStat {
  String? get leagueId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get startDate => throw _privateConstructorUsedError;
  String? get endDate => throw _privateConstructorUsedError;
  String? get level => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get format => throw _privateConstructorUsedError;
  String? get winnerOneId => throw _privateConstructorUsedError;
  String? get winnerTwoId => throw _privateConstructorUsedError;
  List<UserStat>? get userStat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeagueStatCopyWith<LeagueStat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeagueStatCopyWith<$Res> {
  factory $LeagueStatCopyWith(
          LeagueStat value, $Res Function(LeagueStat) then) =
      _$LeagueStatCopyWithImpl<$Res>;
  $Res call(
      {String? leagueId,
      String? name,
      String? city,
      String? state,
      String? country,
      String? startDate,
      String? endDate,
      String? level,
      String? description,
      String? status,
      String? format,
      String? winnerOneId,
      String? winnerTwoId,
      List<UserStat>? userStat});
}

/// @nodoc
class _$LeagueStatCopyWithImpl<$Res> implements $LeagueStatCopyWith<$Res> {
  _$LeagueStatCopyWithImpl(this._value, this._then);

  final LeagueStat _value;
  // ignore: unused_field
  final $Res Function(LeagueStat) _then;

  @override
  $Res call({
    Object? leagueId = freezed,
    Object? name = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? level = freezed,
    Object? description = freezed,
    Object? status = freezed,
    Object? format = freezed,
    Object? winnerOneId = freezed,
    Object? winnerTwoId = freezed,
    Object? userStat = freezed,
  }) {
    return _then(_value.copyWith(
      leagueId: leagueId == freezed
          ? _value.leagueId
          : leagueId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      format: format == freezed
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      winnerOneId: winnerOneId == freezed
          ? _value.winnerOneId
          : winnerOneId // ignore: cast_nullable_to_non_nullable
              as String?,
      winnerTwoId: winnerTwoId == freezed
          ? _value.winnerTwoId
          : winnerTwoId // ignore: cast_nullable_to_non_nullable
              as String?,
      userStat: userStat == freezed
          ? _value.userStat
          : userStat // ignore: cast_nullable_to_non_nullable
              as List<UserStat>?,
    ));
  }
}

/// @nodoc
abstract class _$LeagueStatCopyWith<$Res> implements $LeagueStatCopyWith<$Res> {
  factory _$LeagueStatCopyWith(
          _LeagueStat value, $Res Function(_LeagueStat) then) =
      __$LeagueStatCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? leagueId,
      String? name,
      String? city,
      String? state,
      String? country,
      String? startDate,
      String? endDate,
      String? level,
      String? description,
      String? status,
      String? format,
      String? winnerOneId,
      String? winnerTwoId,
      List<UserStat>? userStat});
}

/// @nodoc
class __$LeagueStatCopyWithImpl<$Res> extends _$LeagueStatCopyWithImpl<$Res>
    implements _$LeagueStatCopyWith<$Res> {
  __$LeagueStatCopyWithImpl(
      _LeagueStat _value, $Res Function(_LeagueStat) _then)
      : super(_value, (v) => _then(v as _LeagueStat));

  @override
  _LeagueStat get _value => super._value as _LeagueStat;

  @override
  $Res call({
    Object? leagueId = freezed,
    Object? name = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? level = freezed,
    Object? description = freezed,
    Object? status = freezed,
    Object? format = freezed,
    Object? winnerOneId = freezed,
    Object? winnerTwoId = freezed,
    Object? userStat = freezed,
  }) {
    return _then(_LeagueStat(
      leagueId: leagueId == freezed
          ? _value.leagueId
          : leagueId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      format: format == freezed
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      winnerOneId: winnerOneId == freezed
          ? _value.winnerOneId
          : winnerOneId // ignore: cast_nullable_to_non_nullable
              as String?,
      winnerTwoId: winnerTwoId == freezed
          ? _value.winnerTwoId
          : winnerTwoId // ignore: cast_nullable_to_non_nullable
              as String?,
      userStat: userStat == freezed
          ? _value.userStat
          : userStat // ignore: cast_nullable_to_non_nullable
              as List<UserStat>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LeagueStat implements _LeagueStat {
  const _$_LeagueStat(
      {required this.leagueId,
      required this.name,
      required this.city,
      required this.state,
      required this.country,
      required this.startDate,
      required this.endDate,
      required this.level,
      required this.description,
      required this.status,
      required this.format,
      required this.winnerOneId,
      required this.winnerTwoId,
      required this.userStat});

  factory _$_LeagueStat.fromJson(Map<String, dynamic> json) =>
      _$$_LeagueStatFromJson(json);

  @override
  final String? leagueId;
  @override
  final String? name;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? country;
  @override
  final String? startDate;
  @override
  final String? endDate;
  @override
  final String? level;
  @override
  final String? description;
  @override
  final String? status;
  @override
  final String? format;
  @override
  final String? winnerOneId;
  @override
  final String? winnerTwoId;
  @override
  final List<UserStat>? userStat;

  @override
  String toString() {
    return 'LeagueStat(leagueId: $leagueId, name: $name, city: $city, state: $state, country: $country, startDate: $startDate, endDate: $endDate, level: $level, description: $description, status: $status, format: $format, winnerOneId: $winnerOneId, winnerTwoId: $winnerTwoId, userStat: $userStat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LeagueStat &&
            const DeepCollectionEquality().equals(other.leagueId, leagueId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.endDate, endDate) &&
            const DeepCollectionEquality().equals(other.level, level) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.format, format) &&
            const DeepCollectionEquality()
                .equals(other.winnerOneId, winnerOneId) &&
            const DeepCollectionEquality()
                .equals(other.winnerTwoId, winnerTwoId) &&
            const DeepCollectionEquality().equals(other.userStat, userStat));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(leagueId),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(state),
      const DeepCollectionEquality().hash(country),
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(endDate),
      const DeepCollectionEquality().hash(level),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(format),
      const DeepCollectionEquality().hash(winnerOneId),
      const DeepCollectionEquality().hash(winnerTwoId),
      const DeepCollectionEquality().hash(userStat));

  @JsonKey(ignore: true)
  @override
  _$LeagueStatCopyWith<_LeagueStat> get copyWith =>
      __$LeagueStatCopyWithImpl<_LeagueStat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LeagueStatToJson(this);
  }
}

abstract class _LeagueStat implements LeagueStat {
  const factory _LeagueStat(
      {required String? leagueId,
      required String? name,
      required String? city,
      required String? state,
      required String? country,
      required String? startDate,
      required String? endDate,
      required String? level,
      required String? description,
      required String? status,
      required String? format,
      required String? winnerOneId,
      required String? winnerTwoId,
      required List<UserStat>? userStat}) = _$_LeagueStat;

  factory _LeagueStat.fromJson(Map<String, dynamic> json) =
      _$_LeagueStat.fromJson;

  @override
  String? get leagueId;
  @override
  String? get name;
  @override
  String? get city;
  @override
  String? get state;
  @override
  String? get country;
  @override
  String? get startDate;
  @override
  String? get endDate;
  @override
  String? get level;
  @override
  String? get description;
  @override
  String? get status;
  @override
  String? get format;
  @override
  String? get winnerOneId;
  @override
  String? get winnerTwoId;
  @override
  List<UserStat>? get userStat;
  @override
  @JsonKey(ignore: true)
  _$LeagueStatCopyWith<_LeagueStat> get copyWith =>
      throw _privateConstructorUsedError;
}

UserStat _$UserStatFromJson(Map<String, dynamic> json) {
  return _UserStat.fromJson(json);
}

/// @nodoc
class _$UserStatTearOff {
  const _$UserStatTearOff();

  _UserStat call(
      {required int? loss,
      required int? total,
      required String? userId,
      required int? won}) {
    return _UserStat(
      loss: loss,
      total: total,
      userId: userId,
      won: won,
    );
  }

  UserStat fromJson(Map<String, Object?> json) {
    return UserStat.fromJson(json);
  }
}

/// @nodoc
const $UserStat = _$UserStatTearOff();

/// @nodoc
mixin _$UserStat {
  int? get loss => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  int? get won => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserStatCopyWith<UserStat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStatCopyWith<$Res> {
  factory $UserStatCopyWith(UserStat value, $Res Function(UserStat) then) =
      _$UserStatCopyWithImpl<$Res>;
  $Res call({int? loss, int? total, String? userId, int? won});
}

/// @nodoc
class _$UserStatCopyWithImpl<$Res> implements $UserStatCopyWith<$Res> {
  _$UserStatCopyWithImpl(this._value, this._then);

  final UserStat _value;
  // ignore: unused_field
  final $Res Function(UserStat) _then;

  @override
  $Res call({
    Object? loss = freezed,
    Object? total = freezed,
    Object? userId = freezed,
    Object? won = freezed,
  }) {
    return _then(_value.copyWith(
      loss: loss == freezed
          ? _value.loss
          : loss // ignore: cast_nullable_to_non_nullable
              as int?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      won: won == freezed
          ? _value.won
          : won // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$UserStatCopyWith<$Res> implements $UserStatCopyWith<$Res> {
  factory _$UserStatCopyWith(_UserStat value, $Res Function(_UserStat) then) =
      __$UserStatCopyWithImpl<$Res>;
  @override
  $Res call({int? loss, int? total, String? userId, int? won});
}

/// @nodoc
class __$UserStatCopyWithImpl<$Res> extends _$UserStatCopyWithImpl<$Res>
    implements _$UserStatCopyWith<$Res> {
  __$UserStatCopyWithImpl(_UserStat _value, $Res Function(_UserStat) _then)
      : super(_value, (v) => _then(v as _UserStat));

  @override
  _UserStat get _value => super._value as _UserStat;

  @override
  $Res call({
    Object? loss = freezed,
    Object? total = freezed,
    Object? userId = freezed,
    Object? won = freezed,
  }) {
    return _then(_UserStat(
      loss: loss == freezed
          ? _value.loss
          : loss // ignore: cast_nullable_to_non_nullable
              as int?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      won: won == freezed
          ? _value.won
          : won // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserStat implements _UserStat {
  const _$_UserStat(
      {required this.loss,
      required this.total,
      required this.userId,
      required this.won});

  factory _$_UserStat.fromJson(Map<String, dynamic> json) =>
      _$$_UserStatFromJson(json);

  @override
  final int? loss;
  @override
  final int? total;
  @override
  final String? userId;
  @override
  final int? won;

  @override
  String toString() {
    return 'UserStat(loss: $loss, total: $total, userId: $userId, won: $won)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserStat &&
            const DeepCollectionEquality().equals(other.loss, loss) &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.won, won));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(loss),
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(won));

  @JsonKey(ignore: true)
  @override
  _$UserStatCopyWith<_UserStat> get copyWith =>
      __$UserStatCopyWithImpl<_UserStat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserStatToJson(this);
  }
}

abstract class _UserStat implements UserStat {
  const factory _UserStat(
      {required int? loss,
      required int? total,
      required String? userId,
      required int? won}) = _$_UserStat;

  factory _UserStat.fromJson(Map<String, dynamic> json) = _$_UserStat.fromJson;

  @override
  int? get loss;
  @override
  int? get total;
  @override
  String? get userId;
  @override
  int? get won;
  @override
  @JsonKey(ignore: true)
  _$UserStatCopyWith<_UserStat> get copyWith =>
      throw _privateConstructorUsedError;
}
