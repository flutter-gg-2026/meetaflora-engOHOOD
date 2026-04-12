// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plant_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlantInfoModel {

 String get commonName; String get scientificName; String get plantType; String get description; List<String> get keyFeatures; String get healthStatus; String get healthReason; List<String> get possibleUses; String get watering; String get light; String get soil;
/// Create a copy of PlantInfoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlantInfoModelCopyWith<PlantInfoModel> get copyWith => _$PlantInfoModelCopyWithImpl<PlantInfoModel>(this as PlantInfoModel, _$identity);

  /// Serializes this PlantInfoModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlantInfoModel&&(identical(other.commonName, commonName) || other.commonName == commonName)&&(identical(other.scientificName, scientificName) || other.scientificName == scientificName)&&(identical(other.plantType, plantType) || other.plantType == plantType)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.keyFeatures, keyFeatures)&&(identical(other.healthStatus, healthStatus) || other.healthStatus == healthStatus)&&(identical(other.healthReason, healthReason) || other.healthReason == healthReason)&&const DeepCollectionEquality().equals(other.possibleUses, possibleUses)&&(identical(other.watering, watering) || other.watering == watering)&&(identical(other.light, light) || other.light == light)&&(identical(other.soil, soil) || other.soil == soil));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,commonName,scientificName,plantType,description,const DeepCollectionEquality().hash(keyFeatures),healthStatus,healthReason,const DeepCollectionEquality().hash(possibleUses),watering,light,soil);

@override
String toString() {
  return 'PlantInfoModel(commonName: $commonName, scientificName: $scientificName, plantType: $plantType, description: $description, keyFeatures: $keyFeatures, healthStatus: $healthStatus, healthReason: $healthReason, possibleUses: $possibleUses, watering: $watering, light: $light, soil: $soil)';
}


}

/// @nodoc
abstract mixin class $PlantInfoModelCopyWith<$Res>  {
  factory $PlantInfoModelCopyWith(PlantInfoModel value, $Res Function(PlantInfoModel) _then) = _$PlantInfoModelCopyWithImpl;
@useResult
$Res call({
 String commonName, String scientificName, String plantType, String description, List<String> keyFeatures, String healthStatus, String healthReason, List<String> possibleUses, String watering, String light, String soil
});




}
/// @nodoc
class _$PlantInfoModelCopyWithImpl<$Res>
    implements $PlantInfoModelCopyWith<$Res> {
  _$PlantInfoModelCopyWithImpl(this._self, this._then);

  final PlantInfoModel _self;
  final $Res Function(PlantInfoModel) _then;

/// Create a copy of PlantInfoModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? commonName = null,Object? scientificName = null,Object? plantType = null,Object? description = null,Object? keyFeatures = null,Object? healthStatus = null,Object? healthReason = null,Object? possibleUses = null,Object? watering = null,Object? light = null,Object? soil = null,}) {
  return _then(_self.copyWith(
commonName: null == commonName ? _self.commonName : commonName // ignore: cast_nullable_to_non_nullable
as String,scientificName: null == scientificName ? _self.scientificName : scientificName // ignore: cast_nullable_to_non_nullable
as String,plantType: null == plantType ? _self.plantType : plantType // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,keyFeatures: null == keyFeatures ? _self.keyFeatures : keyFeatures // ignore: cast_nullable_to_non_nullable
as List<String>,healthStatus: null == healthStatus ? _self.healthStatus : healthStatus // ignore: cast_nullable_to_non_nullable
as String,healthReason: null == healthReason ? _self.healthReason : healthReason // ignore: cast_nullable_to_non_nullable
as String,possibleUses: null == possibleUses ? _self.possibleUses : possibleUses // ignore: cast_nullable_to_non_nullable
as List<String>,watering: null == watering ? _self.watering : watering // ignore: cast_nullable_to_non_nullable
as String,light: null == light ? _self.light : light // ignore: cast_nullable_to_non_nullable
as String,soil: null == soil ? _self.soil : soil // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PlantInfoModel].
extension PlantInfoModelPatterns on PlantInfoModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlantInfoModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlantInfoModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlantInfoModel value)  $default,){
final _that = this;
switch (_that) {
case _PlantInfoModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlantInfoModel value)?  $default,){
final _that = this;
switch (_that) {
case _PlantInfoModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String commonName,  String scientificName,  String plantType,  String description,  List<String> keyFeatures,  String healthStatus,  String healthReason,  List<String> possibleUses,  String watering,  String light,  String soil)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlantInfoModel() when $default != null:
return $default(_that.commonName,_that.scientificName,_that.plantType,_that.description,_that.keyFeatures,_that.healthStatus,_that.healthReason,_that.possibleUses,_that.watering,_that.light,_that.soil);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String commonName,  String scientificName,  String plantType,  String description,  List<String> keyFeatures,  String healthStatus,  String healthReason,  List<String> possibleUses,  String watering,  String light,  String soil)  $default,) {final _that = this;
switch (_that) {
case _PlantInfoModel():
return $default(_that.commonName,_that.scientificName,_that.plantType,_that.description,_that.keyFeatures,_that.healthStatus,_that.healthReason,_that.possibleUses,_that.watering,_that.light,_that.soil);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String commonName,  String scientificName,  String plantType,  String description,  List<String> keyFeatures,  String healthStatus,  String healthReason,  List<String> possibleUses,  String watering,  String light,  String soil)?  $default,) {final _that = this;
switch (_that) {
case _PlantInfoModel() when $default != null:
return $default(_that.commonName,_that.scientificName,_that.plantType,_that.description,_that.keyFeatures,_that.healthStatus,_that.healthReason,_that.possibleUses,_that.watering,_that.light,_that.soil);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlantInfoModel implements PlantInfoModel {
  const _PlantInfoModel({required this.commonName, required this.scientificName, required this.plantType, required this.description, required final  List<String> keyFeatures, required this.healthStatus, required this.healthReason, required final  List<String> possibleUses, required this.watering, required this.light, required this.soil}): _keyFeatures = keyFeatures,_possibleUses = possibleUses;
  factory _PlantInfoModel.fromJson(Map<String, dynamic> json) => _$PlantInfoModelFromJson(json);

@override final  String commonName;
@override final  String scientificName;
@override final  String plantType;
@override final  String description;
 final  List<String> _keyFeatures;
@override List<String> get keyFeatures {
  if (_keyFeatures is EqualUnmodifiableListView) return _keyFeatures;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_keyFeatures);
}

@override final  String healthStatus;
@override final  String healthReason;
 final  List<String> _possibleUses;
@override List<String> get possibleUses {
  if (_possibleUses is EqualUnmodifiableListView) return _possibleUses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_possibleUses);
}

@override final  String watering;
@override final  String light;
@override final  String soil;

/// Create a copy of PlantInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlantInfoModelCopyWith<_PlantInfoModel> get copyWith => __$PlantInfoModelCopyWithImpl<_PlantInfoModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlantInfoModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlantInfoModel&&(identical(other.commonName, commonName) || other.commonName == commonName)&&(identical(other.scientificName, scientificName) || other.scientificName == scientificName)&&(identical(other.plantType, plantType) || other.plantType == plantType)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._keyFeatures, _keyFeatures)&&(identical(other.healthStatus, healthStatus) || other.healthStatus == healthStatus)&&(identical(other.healthReason, healthReason) || other.healthReason == healthReason)&&const DeepCollectionEquality().equals(other._possibleUses, _possibleUses)&&(identical(other.watering, watering) || other.watering == watering)&&(identical(other.light, light) || other.light == light)&&(identical(other.soil, soil) || other.soil == soil));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,commonName,scientificName,plantType,description,const DeepCollectionEquality().hash(_keyFeatures),healthStatus,healthReason,const DeepCollectionEquality().hash(_possibleUses),watering,light,soil);

@override
String toString() {
  return 'PlantInfoModel(commonName: $commonName, scientificName: $scientificName, plantType: $plantType, description: $description, keyFeatures: $keyFeatures, healthStatus: $healthStatus, healthReason: $healthReason, possibleUses: $possibleUses, watering: $watering, light: $light, soil: $soil)';
}


}

/// @nodoc
abstract mixin class _$PlantInfoModelCopyWith<$Res> implements $PlantInfoModelCopyWith<$Res> {
  factory _$PlantInfoModelCopyWith(_PlantInfoModel value, $Res Function(_PlantInfoModel) _then) = __$PlantInfoModelCopyWithImpl;
@override @useResult
$Res call({
 String commonName, String scientificName, String plantType, String description, List<String> keyFeatures, String healthStatus, String healthReason, List<String> possibleUses, String watering, String light, String soil
});




}
/// @nodoc
class __$PlantInfoModelCopyWithImpl<$Res>
    implements _$PlantInfoModelCopyWith<$Res> {
  __$PlantInfoModelCopyWithImpl(this._self, this._then);

  final _PlantInfoModel _self;
  final $Res Function(_PlantInfoModel) _then;

/// Create a copy of PlantInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? commonName = null,Object? scientificName = null,Object? plantType = null,Object? description = null,Object? keyFeatures = null,Object? healthStatus = null,Object? healthReason = null,Object? possibleUses = null,Object? watering = null,Object? light = null,Object? soil = null,}) {
  return _then(_PlantInfoModel(
commonName: null == commonName ? _self.commonName : commonName // ignore: cast_nullable_to_non_nullable
as String,scientificName: null == scientificName ? _self.scientificName : scientificName // ignore: cast_nullable_to_non_nullable
as String,plantType: null == plantType ? _self.plantType : plantType // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,keyFeatures: null == keyFeatures ? _self._keyFeatures : keyFeatures // ignore: cast_nullable_to_non_nullable
as List<String>,healthStatus: null == healthStatus ? _self.healthStatus : healthStatus // ignore: cast_nullable_to_non_nullable
as String,healthReason: null == healthReason ? _self.healthReason : healthReason // ignore: cast_nullable_to_non_nullable
as String,possibleUses: null == possibleUses ? _self._possibleUses : possibleUses // ignore: cast_nullable_to_non_nullable
as List<String>,watering: null == watering ? _self.watering : watering // ignore: cast_nullable_to_non_nullable
as String,light: null == light ? _self.light : light // ignore: cast_nullable_to_non_nullable
as String,soil: null == soil ? _self.soil : soil // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
