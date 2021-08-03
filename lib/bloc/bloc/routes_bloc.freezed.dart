// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'routes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RoutesEventTearOff {
  const _$RoutesEventTearOff();

  _Started started() {
    return const _Started();
  }

  _Loading loading() {
    return const _Loading();
  }

  _CallListRoutes callListRoutes(dynamic user, dynamic page, dynamic limit) {
    return _CallListRoutes(
      user,
      page,
      limit,
    );
  }
}

/// @nodoc
const $RoutesEvent = _$RoutesEventTearOff();

/// @nodoc
mixin _$RoutesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loading,
    required TResult Function(dynamic user, dynamic page, dynamic limit)
        callListRoutes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function(dynamic user, dynamic page, dynamic limit)? callListRoutes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Loading value) loading,
    required TResult Function(_CallListRoutes value) callListRoutes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Loading value)? loading,
    TResult Function(_CallListRoutes value)? callListRoutes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoutesEventCopyWith<$Res> {
  factory $RoutesEventCopyWith(
          RoutesEvent value, $Res Function(RoutesEvent) then) =
      _$RoutesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RoutesEventCopyWithImpl<$Res> implements $RoutesEventCopyWith<$Res> {
  _$RoutesEventCopyWithImpl(this._value, this._then);

  final RoutesEvent _value;
  // ignore: unused_field
  final $Res Function(RoutesEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$RoutesEventCopyWithImpl<$Res>
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
    return 'RoutesEvent.started()';
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
    required TResult Function(dynamic user, dynamic page, dynamic limit)
        callListRoutes,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function(dynamic user, dynamic page, dynamic limit)? callListRoutes,
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
    required TResult Function(_CallListRoutes value) callListRoutes,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Loading value)? loading,
    TResult Function(_CallListRoutes value)? callListRoutes,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements RoutesEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$RoutesEventCopyWithImpl<$Res>
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
    return 'RoutesEvent.loading()';
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
    required TResult Function(dynamic user, dynamic page, dynamic limit)
        callListRoutes,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function(dynamic user, dynamic page, dynamic limit)? callListRoutes,
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
    required TResult Function(_CallListRoutes value) callListRoutes,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Loading value)? loading,
    TResult Function(_CallListRoutes value)? callListRoutes,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements RoutesEvent {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$CallListRoutesCopyWith<$Res> {
  factory _$CallListRoutesCopyWith(
          _CallListRoutes value, $Res Function(_CallListRoutes) then) =
      __$CallListRoutesCopyWithImpl<$Res>;
  $Res call({dynamic user, dynamic page, dynamic limit});
}

/// @nodoc
class __$CallListRoutesCopyWithImpl<$Res>
    extends _$RoutesEventCopyWithImpl<$Res>
    implements _$CallListRoutesCopyWith<$Res> {
  __$CallListRoutesCopyWithImpl(
      _CallListRoutes _value, $Res Function(_CallListRoutes) _then)
      : super(_value, (v) => _then(v as _CallListRoutes));

  @override
  _CallListRoutes get _value => super._value as _CallListRoutes;

  @override
  $Res call({
    Object? user = freezed,
    Object? page = freezed,
    Object? limit = freezed,
  }) {
    return _then(_CallListRoutes(
      user == freezed ? _value.user : user,
      page == freezed ? _value.page : page,
      limit == freezed ? _value.limit : limit,
    ));
  }
}

/// @nodoc

class _$_CallListRoutes implements _CallListRoutes {
  const _$_CallListRoutes(this.user, this.page, this.limit);

  @override
  final dynamic user;
  @override
  final dynamic page;
  @override
  final dynamic limit;

  @override
  String toString() {
    return 'RoutesEvent.callListRoutes(user: $user, page: $page, limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CallListRoutes &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.limit, limit) ||
                const DeepCollectionEquality().equals(other.limit, limit)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(limit);

  @JsonKey(ignore: true)
  @override
  _$CallListRoutesCopyWith<_CallListRoutes> get copyWith =>
      __$CallListRoutesCopyWithImpl<_CallListRoutes>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loading,
    required TResult Function(dynamic user, dynamic page, dynamic limit)
        callListRoutes,
  }) {
    return callListRoutes(user, page, limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function(dynamic user, dynamic page, dynamic limit)? callListRoutes,
    required TResult orElse(),
  }) {
    if (callListRoutes != null) {
      return callListRoutes(user, page, limit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Loading value) loading,
    required TResult Function(_CallListRoutes value) callListRoutes,
  }) {
    return callListRoutes(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Loading value)? loading,
    TResult Function(_CallListRoutes value)? callListRoutes,
    required TResult orElse(),
  }) {
    if (callListRoutes != null) {
      return callListRoutes(this);
    }
    return orElse();
  }
}

abstract class _CallListRoutes implements RoutesEvent {
  const factory _CallListRoutes(dynamic user, dynamic page, dynamic limit) =
      _$_CallListRoutes;

  dynamic get user => throw _privateConstructorUsedError;
  dynamic get page => throw _privateConstructorUsedError;
  dynamic get limit => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CallListRoutesCopyWith<_CallListRoutes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$RoutesStateTearOff {
  const _$RoutesStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ShowProgress showProgress() {
    return const _ShowProgress();
  }

  _Data data(List<Route> routes) {
    return _Data(
      routes,
    );
  }

  _Failure failure() {
    return const _Failure();
  }
}

/// @nodoc
const $RoutesState = _$RoutesStateTearOff();

/// @nodoc
mixin _$RoutesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() showProgress,
    required TResult Function(List<Route> routes) data,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? showProgress,
    TResult Function(List<Route> routes)? data,
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
abstract class $RoutesStateCopyWith<$Res> {
  factory $RoutesStateCopyWith(
          RoutesState value, $Res Function(RoutesState) then) =
      _$RoutesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RoutesStateCopyWithImpl<$Res> implements $RoutesStateCopyWith<$Res> {
  _$RoutesStateCopyWithImpl(this._value, this._then);

  final RoutesState _value;
  // ignore: unused_field
  final $Res Function(RoutesState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$RoutesStateCopyWithImpl<$Res>
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
    return 'RoutesState.initial()';
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
    required TResult Function(List<Route> routes) data,
    required TResult Function() failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? showProgress,
    TResult Function(List<Route> routes)? data,
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

abstract class _Initial implements RoutesState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ShowProgressCopyWith<$Res> {
  factory _$ShowProgressCopyWith(
          _ShowProgress value, $Res Function(_ShowProgress) then) =
      __$ShowProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$ShowProgressCopyWithImpl<$Res> extends _$RoutesStateCopyWithImpl<$Res>
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
    return 'RoutesState.showProgress()';
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
    required TResult Function(List<Route> routes) data,
    required TResult Function() failure,
  }) {
    return showProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? showProgress,
    TResult Function(List<Route> routes)? data,
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

abstract class _ShowProgress implements RoutesState {
  const factory _ShowProgress() = _$_ShowProgress;
}

/// @nodoc
abstract class _$DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) =
      __$DataCopyWithImpl<$Res>;
  $Res call({List<Route> routes});
}

/// @nodoc
class __$DataCopyWithImpl<$Res> extends _$RoutesStateCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(_Data _value, $Res Function(_Data) _then)
      : super(_value, (v) => _then(v as _Data));

  @override
  _Data get _value => super._value as _Data;

  @override
  $Res call({
    Object? routes = freezed,
  }) {
    return _then(_Data(
      routes == freezed
          ? _value.routes
          : routes // ignore: cast_nullable_to_non_nullable
              as List<Route>,
    ));
  }
}

/// @nodoc

class _$_Data implements _Data {
  const _$_Data(this.routes);

  @override
  final List<Route> routes;

  @override
  String toString() {
    return 'RoutesState.data(routes: $routes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Data &&
            (identical(other.routes, routes) ||
                const DeepCollectionEquality().equals(other.routes, routes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(routes);

  @JsonKey(ignore: true)
  @override
  _$DataCopyWith<_Data> get copyWith =>
      __$DataCopyWithImpl<_Data>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() showProgress,
    required TResult Function(List<Route> routes) data,
    required TResult Function() failure,
  }) {
    return data(routes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? showProgress,
    TResult Function(List<Route> routes)? data,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(routes);
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

abstract class _Data implements RoutesState {
  const factory _Data(List<Route> routes) = _$_Data;

  List<Route> get routes => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DataCopyWith<_Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$RoutesStateCopyWithImpl<$Res>
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
    return 'RoutesState.failure()';
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
    required TResult Function(List<Route> routes) data,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? showProgress,
    TResult Function(List<Route> routes)? data,
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

abstract class _Failure implements RoutesState {
  const factory _Failure() = _$_Failure;
}
