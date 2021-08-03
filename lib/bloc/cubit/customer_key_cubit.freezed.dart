// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'customer_key_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CustomerKeyStateTearOff {
  const _$CustomerKeyStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _EmiteKeys emiteKeys(String key) {
    return _EmiteKeys(
      key,
    );
  }
}

/// @nodoc
const $CustomerKeyState = _$CustomerKeyStateTearOff();

/// @nodoc
mixin _$CustomerKeyState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String key) emiteKeys,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String key)? emiteKeys,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EmiteKeys value) emiteKeys,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EmiteKeys value)? emiteKeys,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerKeyStateCopyWith<$Res> {
  factory $CustomerKeyStateCopyWith(
          CustomerKeyState value, $Res Function(CustomerKeyState) then) =
      _$CustomerKeyStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CustomerKeyStateCopyWithImpl<$Res>
    implements $CustomerKeyStateCopyWith<$Res> {
  _$CustomerKeyStateCopyWithImpl(this._value, this._then);

  final CustomerKeyState _value;
  // ignore: unused_field
  final $Res Function(CustomerKeyState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$CustomerKeyStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CustomerKeyState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String key) emiteKeys,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String key)? emiteKeys,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EmiteKeys value) emiteKeys,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EmiteKeys value)? emiteKeys,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CustomerKeyState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$EmiteKeysCopyWith<$Res> {
  factory _$EmiteKeysCopyWith(
          _EmiteKeys value, $Res Function(_EmiteKeys) then) =
      __$EmiteKeysCopyWithImpl<$Res>;
  $Res call({String key});
}

/// @nodoc
class __$EmiteKeysCopyWithImpl<$Res>
    extends _$CustomerKeyStateCopyWithImpl<$Res>
    implements _$EmiteKeysCopyWith<$Res> {
  __$EmiteKeysCopyWithImpl(_EmiteKeys _value, $Res Function(_EmiteKeys) _then)
      : super(_value, (v) => _then(v as _EmiteKeys));

  @override
  _EmiteKeys get _value => super._value as _EmiteKeys;

  @override
  $Res call({
    Object? key = freezed,
  }) {
    return _then(_EmiteKeys(
      key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmiteKeys implements _EmiteKeys {
  const _$_EmiteKeys(this.key);

  @override
  final String key;

  @override
  String toString() {
    return 'CustomerKeyState.emiteKeys(key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmiteKeys &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(key);

  @JsonKey(ignore: true)
  @override
  _$EmiteKeysCopyWith<_EmiteKeys> get copyWith =>
      __$EmiteKeysCopyWithImpl<_EmiteKeys>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String key) emiteKeys,
  }) {
    return emiteKeys(key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String key)? emiteKeys,
    required TResult orElse(),
  }) {
    if (emiteKeys != null) {
      return emiteKeys(key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EmiteKeys value) emiteKeys,
  }) {
    return emiteKeys(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EmiteKeys value)? emiteKeys,
    required TResult orElse(),
  }) {
    if (emiteKeys != null) {
      return emiteKeys(this);
    }
    return orElse();
  }
}

abstract class _EmiteKeys implements CustomerKeyState {
  const factory _EmiteKeys(String key) = _$_EmiteKeys;

  String get key => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$EmiteKeysCopyWith<_EmiteKeys> get copyWith =>
      throw _privateConstructorUsedError;
}
