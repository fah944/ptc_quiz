// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Comp _$CompFromJson(Map<String, dynamic> json) {
  return _Comp.fromJson(json);
}

/// @nodoc
mixin _$Comp {
  int get isActive => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Address? get addressModel => throw _privateConstructorUsedError;
  String get established => throw _privateConstructorUsedError;
  List<Department> get departments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompCopyWith<Comp> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompCopyWith<$Res> {
  factory $CompCopyWith(Comp value, $Res Function(Comp) then) =
      _$CompCopyWithImpl<$Res, Comp>;
  @useResult
  $Res call(
      {int isActive,
      String name,
      Address? addressModel,
      String established,
      List<Department> departments});

  $AddressCopyWith<$Res>? get addressModel;
}

/// @nodoc
class _$CompCopyWithImpl<$Res, $Val extends Comp>
    implements $CompCopyWith<$Res> {
  _$CompCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isActive = null,
    Object? name = null,
    Object? addressModel = freezed,
    Object? established = null,
    Object? departments = null,
  }) {
    return _then(_value.copyWith(
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      addressModel: freezed == addressModel
          ? _value.addressModel
          : addressModel // ignore: cast_nullable_to_non_nullable
              as Address?,
      established: null == established
          ? _value.established
          : established // ignore: cast_nullable_to_non_nullable
              as String,
      departments: null == departments
          ? _value.departments
          : departments // ignore: cast_nullable_to_non_nullable
              as List<Department>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get addressModel {
    if (_value.addressModel == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.addressModel!, (value) {
      return _then(_value.copyWith(addressModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CompImplCopyWith<$Res> implements $CompCopyWith<$Res> {
  factory _$$CompImplCopyWith(
          _$CompImpl value, $Res Function(_$CompImpl) then) =
      __$$CompImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int isActive,
      String name,
      Address? addressModel,
      String established,
      List<Department> departments});

  @override
  $AddressCopyWith<$Res>? get addressModel;
}

/// @nodoc
class __$$CompImplCopyWithImpl<$Res>
    extends _$CompCopyWithImpl<$Res, _$CompImpl>
    implements _$$CompImplCopyWith<$Res> {
  __$$CompImplCopyWithImpl(_$CompImpl _value, $Res Function(_$CompImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isActive = null,
    Object? name = null,
    Object? addressModel = freezed,
    Object? established = null,
    Object? departments = null,
  }) {
    return _then(_$CompImpl(
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      addressModel: freezed == addressModel
          ? _value.addressModel
          : addressModel // ignore: cast_nullable_to_non_nullable
              as Address?,
      established: null == established
          ? _value.established
          : established // ignore: cast_nullable_to_non_nullable
              as String,
      departments: null == departments
          ? _value._departments
          : departments // ignore: cast_nullable_to_non_nullable
              as List<Department>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompImpl implements _Comp {
  const _$CompImpl(
      {required this.isActive,
      required this.name,
      this.addressModel,
      required this.established,
      required final List<Department> departments})
      : _departments = departments;

  factory _$CompImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompImplFromJson(json);

  @override
  final int isActive;
  @override
  final String name;
  @override
  final Address? addressModel;
  @override
  final String established;
  final List<Department> _departments;
  @override
  List<Department> get departments {
    if (_departments is EqualUnmodifiableListView) return _departments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_departments);
  }

  @override
  String toString() {
    return 'Comp(isActive: $isActive, name: $name, addressModel: $addressModel, established: $established, departments: $departments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompImpl &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.addressModel, addressModel) ||
                other.addressModel == addressModel) &&
            (identical(other.established, established) ||
                other.established == established) &&
            const DeepCollectionEquality()
                .equals(other._departments, _departments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isActive, name, addressModel,
      established, const DeepCollectionEquality().hash(_departments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompImplCopyWith<_$CompImpl> get copyWith =>
      __$$CompImplCopyWithImpl<_$CompImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompImplToJson(
      this,
    );
  }
}

abstract class _Comp implements Comp {
  const factory _Comp(
      {required final int isActive,
      required final String name,
      final Address? addressModel,
      required final String established,
      required final List<Department> departments}) = _$CompImpl;

  factory _Comp.fromJson(Map<String, dynamic> json) = _$CompImpl.fromJson;

  @override
  int get isActive;
  @override
  String get name;
  @override
  Address? get addressModel;
  @override
  String get established;
  @override
  List<Department> get departments;
  @override
  @JsonKey(ignore: true)
  _$$CompImplCopyWith<_$CompImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
