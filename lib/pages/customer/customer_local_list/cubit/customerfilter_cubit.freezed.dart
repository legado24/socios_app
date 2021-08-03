// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'customerfilter_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CustomerfilterStateTearOff {
  const _$CustomerfilterStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Filter filter(ClienteFilter clienteFilter) {
    return _Filter(
      clienteFilter,
    );
  }
}

/// @nodoc
const $CustomerfilterState = _$CustomerfilterStateTearOff();

/// @nodoc
mixin _$CustomerfilterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ClienteFilter clienteFilter) filter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ClienteFilter clienteFilter)? filter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Filter value) filter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Filter value)? filter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerfilterStateCopyWith<$Res> {
  factory $CustomerfilterStateCopyWith(
          CustomerfilterState value, $Res Function(CustomerfilterState) then) =
      _$CustomerfilterStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CustomerfilterStateCopyWithImpl<$Res>
    implements $CustomerfilterStateCopyWith<$Res> {
  _$CustomerfilterStateCopyWithImpl(this._value, this._then);

  final CustomerfilterState _value;
  // ignore: unused_field
  final $Res Function(CustomerfilterState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$CustomerfilterStateCopyWithImpl<$Res>
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
    return 'CustomerfilterState.initial()';
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
    required TResult Function(ClienteFilter clienteFilter) filter,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ClienteFilter clienteFilter)? filter,
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
    required TResult Function(_Filter value) filter,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Filter value)? filter,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CustomerfilterState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$FilterCopyWith<$Res> {
  factory _$FilterCopyWith(_Filter value, $Res Function(_Filter) then) =
      __$FilterCopyWithImpl<$Res>;
  $Res call({ClienteFilter clienteFilter});
}

/// @nodoc
class __$FilterCopyWithImpl<$Res>
    extends _$CustomerfilterStateCopyWithImpl<$Res>
    implements _$FilterCopyWith<$Res> {
  __$FilterCopyWithImpl(_Filter _value, $Res Function(_Filter) _then)
      : super(_value, (v) => _then(v as _Filter));

  @override
  _Filter get _value => super._value as _Filter;

  @override
  $Res call({
    Object? clienteFilter = freezed,
  }) {
    return _then(_Filter(
      clienteFilter == freezed
          ? _value.clienteFilter
          : clienteFilter // ignore: cast_nullable_to_non_nullable
              as ClienteFilter,
    ));
  }
}

/// @nodoc

class _$_Filter implements _Filter {
  const _$_Filter(this.clienteFilter);

  @override
  final ClienteFilter clienteFilter;

  @override
  String toString() {
    return 'CustomerfilterState.filter(clienteFilter: $clienteFilter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Filter &&
            (identical(other.clienteFilter, clienteFilter) ||
                const DeepCollectionEquality()
                    .equals(other.clienteFilter, clienteFilter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(clienteFilter);

  @JsonKey(ignore: true)
  @override
  _$FilterCopyWith<_Filter> get copyWith =>
      __$FilterCopyWithImpl<_Filter>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ClienteFilter clienteFilter) filter,
  }) {
    return filter(clienteFilter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ClienteFilter clienteFilter)? filter,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter(clienteFilter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Filter value) filter,
  }) {
    return filter(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Filter value)? filter,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter(this);
    }
    return orElse();
  }
}

abstract class _Filter implements CustomerfilterState {
  const factory _Filter(ClienteFilter clienteFilter) = _$_Filter;

  ClienteFilter get clienteFilter => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FilterCopyWith<_Filter> get copyWith => throw _privateConstructorUsedError;
}
