// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'using_freezed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JsonFreezedModel _$JsonFreezedModelFromJson(Map<String, dynamic> json) {
  return _JsonFreezedModel.fromJson(json);
}

/// @nodoc
mixin _$JsonFreezedModel {
  Comp get company => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JsonFreezedModelCopyWith<JsonFreezedModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JsonFreezedModelCopyWith<$Res> {
  factory $JsonFreezedModelCopyWith(
          JsonFreezedModel value, $Res Function(JsonFreezedModel) then) =
      _$JsonFreezedModelCopyWithImpl<$Res, JsonFreezedModel>;
  @useResult
  $Res call({Comp company});

  $CompCopyWith<$Res> get company;
}

/// @nodoc
class _$JsonFreezedModelCopyWithImpl<$Res, $Val extends JsonFreezedModel>
    implements $JsonFreezedModelCopyWith<$Res> {
  _$JsonFreezedModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? company = null,
  }) {
    return _then(_value.copyWith(
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as Comp,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CompCopyWith<$Res> get company {
    return $CompCopyWith<$Res>(_value.company, (value) {
      return _then(_value.copyWith(company: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$JsonFreezedModelImplCopyWith<$Res>
    implements $JsonFreezedModelCopyWith<$Res> {
  factory _$$JsonFreezedModelImplCopyWith(_$JsonFreezedModelImpl value,
          $Res Function(_$JsonFreezedModelImpl) then) =
      __$$JsonFreezedModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Comp company});

  @override
  $CompCopyWith<$Res> get company;
}

/// @nodoc
class __$$JsonFreezedModelImplCopyWithImpl<$Res>
    extends _$JsonFreezedModelCopyWithImpl<$Res, _$JsonFreezedModelImpl>
    implements _$$JsonFreezedModelImplCopyWith<$Res> {
  __$$JsonFreezedModelImplCopyWithImpl(_$JsonFreezedModelImpl _value,
      $Res Function(_$JsonFreezedModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? company = null,
  }) {
    return _then(_$JsonFreezedModelImpl(
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as Comp,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JsonFreezedModelImpl implements _JsonFreezedModel {
  const _$JsonFreezedModelImpl({required this.company});

  factory _$JsonFreezedModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$JsonFreezedModelImplFromJson(json);

  @override
  final Comp company;

  @override
  String toString() {
    return 'JsonFreezedModel(company: $company)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JsonFreezedModelImpl &&
            (identical(other.company, company) || other.company == company));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, company);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JsonFreezedModelImplCopyWith<_$JsonFreezedModelImpl> get copyWith =>
      __$$JsonFreezedModelImplCopyWithImpl<_$JsonFreezedModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JsonFreezedModelImplToJson(
      this,
    );
  }
}

abstract class _JsonFreezedModel implements JsonFreezedModel {
  const factory _JsonFreezedModel({required final Comp company}) =
      _$JsonFreezedModelImpl;

  factory _JsonFreezedModel.fromJson(Map<String, dynamic> json) =
      _$JsonFreezedModelImpl.fromJson;

  @override
  Comp get company;
  @override
  @JsonKey(ignore: true)
  _$$JsonFreezedModelImplCopyWith<_$JsonFreezedModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
