// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'list_pedidos_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ListPedidosEventTearOff {
  const _$ListPedidosEventTearOff();

  _Started started() {
    return const _Started();
  }

  _Loading loading() {
    return const _Loading();
  }

  _CallListPedidos callListPedidos(dynamic user, dynamic fecha) {
    return _CallListPedidos(
      user,
      fecha,
    );
  }
}

/// @nodoc
const $ListPedidosEvent = _$ListPedidosEventTearOff();

/// @nodoc
mixin _$ListPedidosEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loading,
    required TResult Function(dynamic user, dynamic fecha) callListPedidos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function(dynamic user, dynamic fecha)? callListPedidos,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Loading value) loading,
    required TResult Function(_CallListPedidos value) callListPedidos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Loading value)? loading,
    TResult Function(_CallListPedidos value)? callListPedidos,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListPedidosEventCopyWith<$Res> {
  factory $ListPedidosEventCopyWith(
          ListPedidosEvent value, $Res Function(ListPedidosEvent) then) =
      _$ListPedidosEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListPedidosEventCopyWithImpl<$Res>
    implements $ListPedidosEventCopyWith<$Res> {
  _$ListPedidosEventCopyWithImpl(this._value, this._then);

  final ListPedidosEvent _value;
  // ignore: unused_field
  final $Res Function(ListPedidosEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$ListPedidosEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'ListPedidosEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loading,
    required TResult Function(dynamic user, dynamic fecha) callListPedidos,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function(dynamic user, dynamic fecha)? callListPedidos,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Loading value) loading,
    required TResult Function(_CallListPedidos value) callListPedidos,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Loading value)? loading,
    TResult Function(_CallListPedidos value)? callListPedidos,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ListPedidosEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$ListPedidosEventCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'ListPedidosEvent.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loading,
    required TResult Function(dynamic user, dynamic fecha) callListPedidos,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function(dynamic user, dynamic fecha)? callListPedidos,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Loading value) loading,
    required TResult Function(_CallListPedidos value) callListPedidos,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Loading value)? loading,
    TResult Function(_CallListPedidos value)? callListPedidos,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ListPedidosEvent {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$CallListPedidosCopyWith<$Res> {
  factory _$CallListPedidosCopyWith(
          _CallListPedidos value, $Res Function(_CallListPedidos) then) =
      __$CallListPedidosCopyWithImpl<$Res>;
  $Res call({dynamic user, dynamic fecha});
}

/// @nodoc
class __$CallListPedidosCopyWithImpl<$Res>
    extends _$ListPedidosEventCopyWithImpl<$Res>
    implements _$CallListPedidosCopyWith<$Res> {
  __$CallListPedidosCopyWithImpl(
      _CallListPedidos _value, $Res Function(_CallListPedidos) _then)
      : super(_value, (v) => _then(v as _CallListPedidos));

  @override
  _CallListPedidos get _value => super._value as _CallListPedidos;

  @override
  $Res call({
    Object? user = freezed,
    Object? fecha = freezed,
  }) {
    return _then(_CallListPedidos(
      user == freezed ? _value.user : user,
      fecha == freezed ? _value.fecha : fecha,
    ));
  }
}

/// @nodoc

class _$_CallListPedidos implements _CallListPedidos {
  const _$_CallListPedidos(this.user, this.fecha);

  @override
  final dynamic user;
  @override
  final dynamic fecha;

  @override
  String toString() {
    return 'ListPedidosEvent.callListPedidos(user: $user, fecha: $fecha)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CallListPedidos &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.fecha, fecha) ||
                const DeepCollectionEquality().equals(other.fecha, fecha)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(fecha);

  @JsonKey(ignore: true)
  @override
  _$CallListPedidosCopyWith<_CallListPedidos> get copyWith =>
      __$CallListPedidosCopyWithImpl<_CallListPedidos>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loading,
    required TResult Function(dynamic user, dynamic fecha) callListPedidos,
  }) {
    return callListPedidos(user, fecha);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function(dynamic user, dynamic fecha)? callListPedidos,
    required TResult orElse(),
  }) {
    if (callListPedidos != null) {
      return callListPedidos(user, fecha);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Loading value) loading,
    required TResult Function(_CallListPedidos value) callListPedidos,
  }) {
    return callListPedidos(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Loading value)? loading,
    TResult Function(_CallListPedidos value)? callListPedidos,
    required TResult orElse(),
  }) {
    if (callListPedidos != null) {
      return callListPedidos(this);
    }
    return orElse();
  }
}

abstract class _CallListPedidos implements ListPedidosEvent {
  const factory _CallListPedidos(dynamic user, dynamic fecha) =
      _$_CallListPedidos;

  dynamic get user => throw _privateConstructorUsedError;
  dynamic get fecha => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CallListPedidosCopyWith<_CallListPedidos> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ListPedidosStateTearOff {
  const _$ListPedidosStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ShowProgress showProgress() {
    return const _ShowProgress();
  }

  _Data data(List<Pedido> pedidos) {
    return _Data(
      pedidos,
    );
  }

  _Failure failure() {
    return const _Failure();
  }
}

/// @nodoc
const $ListPedidosState = _$ListPedidosStateTearOff();

/// @nodoc
mixin _$ListPedidosState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() showProgress,
    required TResult Function(List<Pedido> pedidos) data,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? showProgress,
    TResult Function(List<Pedido> pedidos)? data,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShowProgress value) showProgress,
    required TResult Function(_Data value) data,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowProgress value)? showProgress,
    TResult Function(_Data value)? data,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListPedidosStateCopyWith<$Res> {
  factory $ListPedidosStateCopyWith(
          ListPedidosState value, $Res Function(ListPedidosState) then) =
      _$ListPedidosStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListPedidosStateCopyWithImpl<$Res>
    implements $ListPedidosStateCopyWith<$Res> {
  _$ListPedidosStateCopyWithImpl(this._value, this._then);

  final ListPedidosState _value;
  // ignore: unused_field
  final $Res Function(ListPedidosState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ListPedidosStateCopyWithImpl<$Res>
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
    return 'ListPedidosState.initial()';
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
    required TResult Function() showProgress,
    required TResult Function(List<Pedido> pedidos) data,
    required TResult Function() failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? showProgress,
    TResult Function(List<Pedido> pedidos)? data,
    TResult Function()? failure,
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
    required TResult Function(_ShowProgress value) showProgress,
    required TResult Function(_Data value) data,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowProgress value)? showProgress,
    TResult Function(_Data value)? data,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ListPedidosState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ShowProgressCopyWith<$Res> {
  factory _$ShowProgressCopyWith(
          _ShowProgress value, $Res Function(_ShowProgress) then) =
      __$ShowProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$ShowProgressCopyWithImpl<$Res>
    extends _$ListPedidosStateCopyWithImpl<$Res>
    implements _$ShowProgressCopyWith<$Res> {
  __$ShowProgressCopyWithImpl(
      _ShowProgress _value, $Res Function(_ShowProgress) _then)
      : super(_value, (v) => _then(v as _ShowProgress));

  @override
  _ShowProgress get _value => super._value as _ShowProgress;
}

/// @nodoc

class _$_ShowProgress implements _ShowProgress {
  const _$_ShowProgress();

  @override
  String toString() {
    return 'ListPedidosState.showProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ShowProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() showProgress,
    required TResult Function(List<Pedido> pedidos) data,
    required TResult Function() failure,
  }) {
    return showProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? showProgress,
    TResult Function(List<Pedido> pedidos)? data,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (showProgress != null) {
      return showProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShowProgress value) showProgress,
    required TResult Function(_Data value) data,
    required TResult Function(_Failure value) failure,
  }) {
    return showProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowProgress value)? showProgress,
    TResult Function(_Data value)? data,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (showProgress != null) {
      return showProgress(this);
    }
    return orElse();
  }
}

abstract class _ShowProgress implements ListPedidosState {
  const factory _ShowProgress() = _$_ShowProgress;
}

/// @nodoc
abstract class _$DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) =
      __$DataCopyWithImpl<$Res>;
  $Res call({List<Pedido> pedidos});
}

/// @nodoc
class __$DataCopyWithImpl<$Res> extends _$ListPedidosStateCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(_Data _value, $Res Function(_Data) _then)
      : super(_value, (v) => _then(v as _Data));

  @override
  _Data get _value => super._value as _Data;

  @override
  $Res call({
    Object? pedidos = freezed,
  }) {
    return _then(_Data(
      pedidos == freezed
          ? _value.pedidos
          : pedidos // ignore: cast_nullable_to_non_nullable
              as List<Pedido>,
    ));
  }
}

/// @nodoc

class _$_Data implements _Data {
  const _$_Data(this.pedidos);

  @override
  final List<Pedido> pedidos;

  @override
  String toString() {
    return 'ListPedidosState.data(pedidos: $pedidos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Data &&
            (identical(other.pedidos, pedidos) ||
                const DeepCollectionEquality().equals(other.pedidos, pedidos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(pedidos);

  @JsonKey(ignore: true)
  @override
  _$DataCopyWith<_Data> get copyWith =>
      __$DataCopyWithImpl<_Data>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() showProgress,
    required TResult Function(List<Pedido> pedidos) data,
    required TResult Function() failure,
  }) {
    return data(pedidos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? showProgress,
    TResult Function(List<Pedido> pedidos)? data,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(pedidos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShowProgress value) showProgress,
    required TResult Function(_Data value) data,
    required TResult Function(_Failure value) failure,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowProgress value)? showProgress,
    TResult Function(_Data value)? data,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _Data implements ListPedidosState {
  const factory _Data(List<Pedido> pedidos) = _$_Data;

  List<Pedido> get pedidos => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DataCopyWith<_Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$ListPedidosStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure();

  @override
  String toString() {
    return 'ListPedidosState.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Failure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() showProgress,
    required TResult Function(List<Pedido> pedidos) data,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? showProgress,
    TResult Function(List<Pedido> pedidos)? data,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShowProgress value) showProgress,
    required TResult Function(_Data value) data,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowProgress value)? showProgress,
    TResult Function(_Data value)? data,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements ListPedidosState {
  const factory _Failure() = _$_Failure;
}
