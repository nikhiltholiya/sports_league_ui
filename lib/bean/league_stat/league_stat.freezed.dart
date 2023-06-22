// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'league_stat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LeagueStatData _$LeagueStatDataFromJson(Map<String, dynamic> json) {
  return _LeagueStatData.fromJson(json);
}

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
      _$LeagueStatDataCopyWithImpl<$Res, LeagueStatData>;
  @useResult
  $Res call({LeagueStat? leagueStat});

  $LeagueStatCopyWith<$Res>? get leagueStat;
}

/// @nodoc
class _$LeagueStatDataCopyWithImpl<$Res, $Val extends LeagueStatData>
    implements $LeagueStatDataCopyWith<$Res> {
  _$LeagueStatDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leagueStat = freezed,
  }) {
    return _then(_value.copyWith(
      leagueStat: freezed == leagueStat
          ? _value.leagueStat
          : leagueStat // ignore: cast_nullable_to_non_nullable
              as LeagueStat?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LeagueStatCopyWith<$Res>? get leagueStat {
    if (_value.leagueStat == null) {
      return null;
    }

    return $LeagueStatCopyWith<$Res>(_value.leagueStat!, (value) {
      return _then(_value.copyWith(leagueStat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LeagueStatDataCopyWith<$Res>
    implements $LeagueStatDataCopyWith<$Res> {
  factory _$$_LeagueStatDataCopyWith(
          _$_LeagueStatData value, $Res Function(_$_LeagueStatData) then) =
      __$$_LeagueStatDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LeagueStat? leagueStat});

  @override
  $LeagueStatCopyWith<$Res>? get leagueStat;
}

/// @nodoc
class __$$_LeagueStatDataCopyWithImpl<$Res>
    extends _$LeagueStatDataCopyWithImpl<$Res, _$_LeagueStatData>
    implements _$$_LeagueStatDataCopyWith<$Res> {
  __$$_LeagueStatDataCopyWithImpl(
      _$_LeagueStatData _value, $Res Function(_$_LeagueStatData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leagueStat = freezed,
  }) {
    return _then(_$_LeagueStatData(
      leagueStat: freezed == leagueStat
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
            other is _$_LeagueStatData &&
            (identical(other.leagueStat, leagueStat) ||
                other.leagueStat == leagueStat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, leagueStat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LeagueStatDataCopyWith<_$_LeagueStatData> get copyWith =>
      __$$_LeagueStatDataCopyWithImpl<_$_LeagueStatData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LeagueStatDataToJson(
      this,
    );
  }
}

abstract class _LeagueStatData implements LeagueStatData {
  const factory _LeagueStatData({required final LeagueStat? leagueStat}) =
      _$_LeagueStatData;

  factory _LeagueStatData.fromJson(Map<String, dynamic> json) =
      _$_LeagueStatData.fromJson;

  @override
  LeagueStat? get leagueStat;
  @override
  @JsonKey(ignore: true)
  _$$_LeagueStatDataCopyWith<_$_LeagueStatData> get copyWith =>
      throw _privateConstructorUsedError;
}

LeagueStat _$LeagueStatFromJson(Map<String, dynamic> json) {
  return _LeagueStat.fromJson(json);
}

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
      _$LeagueStatCopyWithImpl<$Res, LeagueStat>;
  @useResult
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
class _$LeagueStatCopyWithImpl<$Res, $Val extends LeagueStat>
    implements $LeagueStatCopyWith<$Res> {
  _$LeagueStatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
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
      leagueId: freezed == leagueId
          ? _value.leagueId
          : leagueId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      winnerOneId: freezed == winnerOneId
          ? _value.winnerOneId
          : winnerOneId // ignore: cast_nullable_to_non_nullable
              as String?,
      winnerTwoId: freezed == winnerTwoId
          ? _value.winnerTwoId
          : winnerTwoId // ignore: cast_nullable_to_non_nullable
              as String?,
      userStat: freezed == userStat
          ? _value.userStat
          : userStat // ignore: cast_nullable_to_non_nullable
              as List<UserStat>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LeagueStatCopyWith<$Res>
    implements $LeagueStatCopyWith<$Res> {
  factory _$$_LeagueStatCopyWith(
          _$_LeagueStat value, $Res Function(_$_LeagueStat) then) =
      __$$_LeagueStatCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$_LeagueStatCopyWithImpl<$Res>
    extends _$LeagueStatCopyWithImpl<$Res, _$_LeagueStat>
    implements _$$_LeagueStatCopyWith<$Res> {
  __$$_LeagueStatCopyWithImpl(
      _$_LeagueStat _value, $Res Function(_$_LeagueStat) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
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
    return _then(_$_LeagueStat(
      leagueId: freezed == leagueId
          ? _value.leagueId
          : leagueId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      winnerOneId: freezed == winnerOneId
          ? _value.winnerOneId
          : winnerOneId // ignore: cast_nullable_to_non_nullable
              as String?,
      winnerTwoId: freezed == winnerTwoId
          ? _value.winnerTwoId
          : winnerTwoId // ignore: cast_nullable_to_non_nullable
              as String?,
      userStat: freezed == userStat
          ? _value._userStat
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
      required final List<UserStat>? userStat})
      : _userStat = userStat;

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
  final List<UserStat>? _userStat;
  @override
  List<UserStat>? get userStat {
    final value = _userStat;
    if (value == null) return null;
    if (_userStat is EqualUnmodifiableListView) return _userStat;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LeagueStat(leagueId: $leagueId, name: $name, city: $city, state: $state, country: $country, startDate: $startDate, endDate: $endDate, level: $level, description: $description, status: $status, format: $format, winnerOneId: $winnerOneId, winnerTwoId: $winnerTwoId, userStat: $userStat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LeagueStat &&
            (identical(other.leagueId, leagueId) ||
                other.leagueId == leagueId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.winnerOneId, winnerOneId) ||
                other.winnerOneId == winnerOneId) &&
            (identical(other.winnerTwoId, winnerTwoId) ||
                other.winnerTwoId == winnerTwoId) &&
            const DeepCollectionEquality().equals(other._userStat, _userStat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      leagueId,
      name,
      city,
      state,
      country,
      startDate,
      endDate,
      level,
      description,
      status,
      format,
      winnerOneId,
      winnerTwoId,
      const DeepCollectionEquality().hash(_userStat));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LeagueStatCopyWith<_$_LeagueStat> get copyWith =>
      __$$_LeagueStatCopyWithImpl<_$_LeagueStat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LeagueStatToJson(
      this,
    );
  }
}

abstract class _LeagueStat implements LeagueStat {
  const factory _LeagueStat(
      {required final String? leagueId,
      required final String? name,
      required final String? city,
      required final String? state,
      required final String? country,
      required final String? startDate,
      required final String? endDate,
      required final String? level,
      required final String? description,
      required final String? status,
      required final String? format,
      required final String? winnerOneId,
      required final String? winnerTwoId,
      required final List<UserStat>? userStat}) = _$_LeagueStat;

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
  _$$_LeagueStatCopyWith<_$_LeagueStat> get copyWith =>
      throw _privateConstructorUsedError;
}

UserStat _$UserStatFromJson(Map<String, dynamic> json) {
  return _UserStat.fromJson(json);
}

/// @nodoc
mixin _$UserStat {
  int? get loss => throw _privateConstructorUsedError;
  String? get picture => throw _privateConstructorUsedError;
  String? get rating => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;
  int? get won => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserStatCopyWith<UserStat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStatCopyWith<$Res> {
  factory $UserStatCopyWith(UserStat value, $Res Function(UserStat) then) =
      _$UserStatCopyWithImpl<$Res, UserStat>;
  @useResult
  $Res call(
      {int? loss,
      String? picture,
      String? rating,
      int? total,
      String? userId,
      String? userName,
      int? won});
}

/// @nodoc
class _$UserStatCopyWithImpl<$Res, $Val extends UserStat>
    implements $UserStatCopyWith<$Res> {
  _$UserStatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loss = freezed,
    Object? picture = freezed,
    Object? rating = freezed,
    Object? total = freezed,
    Object? userId = freezed,
    Object? userName = freezed,
    Object? won = freezed,
  }) {
    return _then(_value.copyWith(
      loss: freezed == loss
          ? _value.loss
          : loss // ignore: cast_nullable_to_non_nullable
              as int?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      won: freezed == won
          ? _value.won
          : won // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserStatCopyWith<$Res> implements $UserStatCopyWith<$Res> {
  factory _$$_UserStatCopyWith(
          _$_UserStat value, $Res Function(_$_UserStat) then) =
      __$$_UserStatCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? loss,
      String? picture,
      String? rating,
      int? total,
      String? userId,
      String? userName,
      int? won});
}

/// @nodoc
class __$$_UserStatCopyWithImpl<$Res>
    extends _$UserStatCopyWithImpl<$Res, _$_UserStat>
    implements _$$_UserStatCopyWith<$Res> {
  __$$_UserStatCopyWithImpl(
      _$_UserStat _value, $Res Function(_$_UserStat) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loss = freezed,
    Object? picture = freezed,
    Object? rating = freezed,
    Object? total = freezed,
    Object? userId = freezed,
    Object? userName = freezed,
    Object? won = freezed,
  }) {
    return _then(_$_UserStat(
      loss: freezed == loss
          ? _value.loss
          : loss // ignore: cast_nullable_to_non_nullable
              as int?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      won: freezed == won
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
      required this.picture,
      required this.rating,
      required this.total,
      required this.userId,
      required this.userName,
      required this.won});

  factory _$_UserStat.fromJson(Map<String, dynamic> json) =>
      _$$_UserStatFromJson(json);

  @override
  final int? loss;
  @override
  final String? picture;
  @override
  final String? rating;
  @override
  final int? total;
  @override
  final String? userId;
  @override
  final String? userName;
  @override
  final int? won;

  @override
  String toString() {
    return 'UserStat(loss: $loss, picture: $picture, rating: $rating, total: $total, userId: $userId, userName: $userName, won: $won)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserStat &&
            (identical(other.loss, loss) || other.loss == loss) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.won, won) || other.won == won));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, loss, picture, rating, total, userId, userName, won);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserStatCopyWith<_$_UserStat> get copyWith =>
      __$$_UserStatCopyWithImpl<_$_UserStat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserStatToJson(
      this,
    );
  }
}

abstract class _UserStat implements UserStat {
  const factory _UserStat(
      {required final int? loss,
      required final String? picture,
      required final String? rating,
      required final int? total,
      required final String? userId,
      required final String? userName,
      required final int? won}) = _$_UserStat;

  factory _UserStat.fromJson(Map<String, dynamic> json) = _$_UserStat.fromJson;

  @override
  int? get loss;
  @override
  String? get picture;
  @override
  String? get rating;
  @override
  int? get total;
  @override
  String? get userId;
  @override
  String? get userName;
  @override
  int? get won;
  @override
  @JsonKey(ignore: true)
  _$$_UserStatCopyWith<_$_UserStat> get copyWith =>
      throw _privateConstructorUsedError;
}
