// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeEventTearOff {
  const _$HomeEventTearOff();

  _ShowProgress showProgress(dynamic user) {
    return _ShowProgress(
      user,
    );
  }

  _Fetched fetched(dynamic user, _IsLoaded? state) {
    return _Fetched(
      user,
      state,
    );
  }

  _Clean clean() {
    return const _Clean();
  }
}

/// @nodoc
const $HomeEvent = _$HomeEventTearOff();

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic user) showProgress,
    required TResult Function(dynamic user, _IsLoaded? state) fetched,
    required TResult Function() clean,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic user)? showProgress,
    TResult Function(dynamic user, _IsLoaded? state)? fetched,
    TResult Function()? clean,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowProgress value) showProgress,
    required TResult Function(_Fetched value) fetched,
    required TResult Function(_Clean value) clean,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowProgress value)? showProgress,
    TResult Function(_Fetched value)? fetched,
    TResult Function(_Clean value)? clean,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class _$ShowProgressCopyWith<$Res> {
  factory _$ShowProgressCopyWith(
          _ShowProgress value, $Res Function(_ShowProgress) then) =
      __$ShowProgressCopyWithImpl<$Res>;
  $Res call({dynamic user});
}

/// @nodoc
class __$ShowProgressCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$ShowProgressCopyWith<$Res> {
  __$ShowProgressCopyWithImpl(
      _ShowProgress _value, $Res Function(_ShowProgress) _then)
      : super(_value, (v) => _then(v as _ShowProgress));

  @override
  _ShowProgress get _value => super._value as _ShowProgress;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_ShowProgress(
      user == freezed ? _value.user : user,
    ));
  }
}

/// @nodoc

class _$_ShowProgress implements _ShowProgress {
  const _$_ShowProgress(this.user);

  @override
  final dynamic user;

  @override
  String toString() {
    return 'HomeEvent.showProgress(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShowProgress &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$ShowProgressCopyWith<_ShowProgress> get copyWith =>
      __$ShowProgressCopyWithImpl<_ShowProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic user) showProgress,
    required TResult Function(dynamic user, _IsLoaded? state) fetched,
    required TResult Function() clean,
  }) {
    return showProgress(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic user)? showProgress,
    TResult Function(dynamic user, _IsLoaded? state)? fetched,
    TResult Function()? clean,
    required TResult orElse(),
  }) {
    if (showProgress != null) {
      return showProgress(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowProgress value) showProgress,
    required TResult Function(_Fetched value) fetched,
    required TResult Function(_Clean value) clean,
  }) {
    return showProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowProgress value)? showProgress,
    TResult Function(_Fetched value)? fetched,
    TResult Function(_Clean value)? clean,
    required TResult orElse(),
  }) {
    if (showProgress != null) {
      return showProgress(this);
    }
    return orElse();
  }
}

abstract class _ShowProgress implements HomeEvent {
  const factory _ShowProgress(dynamic user) = _$_ShowProgress;

  dynamic get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ShowProgressCopyWith<_ShowProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FetchedCopyWith<$Res> {
  factory _$FetchedCopyWith(_Fetched value, $Res Function(_Fetched) then) =
      __$FetchedCopyWithImpl<$Res>;
  $Res call({dynamic user, _IsLoaded? state});
}

/// @nodoc
class __$FetchedCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$FetchedCopyWith<$Res> {
  __$FetchedCopyWithImpl(_Fetched _value, $Res Function(_Fetched) _then)
      : super(_value, (v) => _then(v as _Fetched));

  @override
  _Fetched get _value => super._value as _Fetched;

  @override
  $Res call({
    Object? user = freezed,
    Object? state = freezed,
  }) {
    return _then(_Fetched(
      user == freezed ? _value.user : user,
      state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as _IsLoaded?,
    ));
  }
}

/// @nodoc

class _$_Fetched implements _Fetched {
  const _$_Fetched(this.user, this.state);

  @override
  final dynamic user;
  @override
  final _IsLoaded? state;

  @override
  String toString() {
    return 'HomeEvent.fetched(user: $user, state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Fetched &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(state);

  @JsonKey(ignore: true)
  @override
  _$FetchedCopyWith<_Fetched> get copyWith =>
      __$FetchedCopyWithImpl<_Fetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic user) showProgress,
    required TResult Function(dynamic user, _IsLoaded? state) fetched,
    required TResult Function() clean,
  }) {
    return fetched(user, state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic user)? showProgress,
    TResult Function(dynamic user, _IsLoaded? state)? fetched,
    TResult Function()? clean,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(user, state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowProgress value) showProgress,
    required TResult Function(_Fetched value) fetched,
    required TResult Function(_Clean value) clean,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowProgress value)? showProgress,
    TResult Function(_Fetched value)? fetched,
    TResult Function(_Clean value)? clean,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class _Fetched implements HomeEvent {
  const factory _Fetched(dynamic user, _IsLoaded? state) = _$_Fetched;

  dynamic get user => throw _privateConstructorUsedError;
  _IsLoaded? get state => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FetchedCopyWith<_Fetched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CleanCopyWith<$Res> {
  factory _$CleanCopyWith(_Clean value, $Res Function(_Clean) then) =
      __$CleanCopyWithImpl<$Res>;
}

/// @nodoc
class __$CleanCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$CleanCopyWith<$Res> {
  __$CleanCopyWithImpl(_Clean _value, $Res Function(_Clean) _then)
      : super(_value, (v) => _then(v as _Clean));

  @override
  _Clean get _value => super._value as _Clean;
}

/// @nodoc

class _$_Clean implements _Clean {
  const _$_Clean();

  @override
  String toString() {
    return 'HomeEvent.clean()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Clean);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic user) showProgress,
    required TResult Function(dynamic user, _IsLoaded? state) fetched,
    required TResult Function() clean,
  }) {
    return clean();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic user)? showProgress,
    TResult Function(dynamic user, _IsLoaded? state)? fetched,
    TResult Function()? clean,
    required TResult orElse(),
  }) {
    if (clean != null) {
      return clean();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowProgress value) showProgress,
    required TResult Function(_Fetched value) fetched,
    required TResult Function(_Clean value) clean,
  }) {
    return clean(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowProgress value)? showProgress,
    TResult Function(_Fetched value)? fetched,
    TResult Function(_Clean value)? clean,
    required TResult orElse(),
  }) {
    if (clean != null) {
      return clean(this);
    }
    return orElse();
  }
}

abstract class _Clean implements HomeEvent {
  const factory _Clean() = _$_Clean;
}

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _IsLoading isLoading() {
    return const _IsLoading();
  }

  _IsLoaded isLoaded(InfoVentaDiariaResponse? infoVentaDiariaResponse) {
    return _IsLoaded(
      infoVentaDiariaResponse,
    );
  }

  _Failure failure() {
    return const _Failure();
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function(InfoVentaDiariaResponse? infoVentaDiariaResponse)
        isLoaded,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(InfoVentaDiariaResponse? infoVentaDiariaResponse)?
        isLoaded,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_IsLoaded value) isLoaded,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsLoaded value)? isLoaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
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
    return 'HomeState.initial()';
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
    required TResult Function() isLoading,
    required TResult Function(InfoVentaDiariaResponse? infoVentaDiariaResponse)
        isLoaded,
    required TResult Function() failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(InfoVentaDiariaResponse? infoVentaDiariaResponse)?
        isLoaded,
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
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_IsLoaded value) isLoaded,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsLoaded value)? isLoaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$IsLoadingCopyWith<$Res> {
  factory _$IsLoadingCopyWith(
          _IsLoading value, $Res Function(_IsLoading) then) =
      __$IsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$IsLoadingCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$IsLoadingCopyWith<$Res> {
  __$IsLoadingCopyWithImpl(_IsLoading _value, $Res Function(_IsLoading) _then)
      : super(_value, (v) => _then(v as _IsLoading));

  @override
  _IsLoading get _value => super._value as _IsLoading;
}

/// @nodoc

class _$_IsLoading implements _IsLoading {
  const _$_IsLoading();

  @override
  String toString() {
    return 'HomeState.isLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _IsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function(InfoVentaDiariaResponse? infoVentaDiariaResponse)
        isLoaded,
    required TResult Function() failure,
  }) {
    return isLoading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(InfoVentaDiariaResponse? infoVentaDiariaResponse)?
        isLoaded,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (isLoading != null) {
      return isLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_IsLoaded value) isLoaded,
    required TResult Function(_Failure value) failure,
  }) {
    return isLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsLoaded value)? isLoaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (isLoading != null) {
      return isLoading(this);
    }
    return orElse();
  }
}

abstract class _IsLoading implements HomeState {
  const factory _IsLoading() = _$_IsLoading;
}

/// @nodoc
abstract class _$IsLoadedCopyWith<$Res> {
  factory _$IsLoadedCopyWith(_IsLoaded value, $Res Function(_IsLoaded) then) =
      __$IsLoadedCopyWithImpl<$Res>;
  $Res call({InfoVentaDiariaResponse? infoVentaDiariaResponse});
}

/// @nodoc
class __$IsLoadedCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$IsLoadedCopyWith<$Res> {
  __$IsLoadedCopyWithImpl(_IsLoaded _value, $Res Function(_IsLoaded) _then)
      : super(_value, (v) => _then(v as _IsLoaded));

  @override
  _IsLoaded get _value => super._value as _IsLoaded;

  @override
  $Res call({
    Object? infoVentaDiariaResponse = freezed,
  }) {
    return _then(_IsLoaded(
      infoVentaDiariaResponse == freezed
          ? _value.infoVentaDiariaResponse
          : infoVentaDiariaResponse // ignore: cast_nullable_to_non_nullable
              as InfoVentaDiariaResponse?,
    ));
  }
}

/// @nodoc

class _$_IsLoaded implements _IsLoaded {
  const _$_IsLoaded(this.infoVentaDiariaResponse);

  @override
  final InfoVentaDiariaResponse? infoVentaDiariaResponse;

  @override
  String toString() {
    return 'HomeState.isLoaded(infoVentaDiariaResponse: $infoVentaDiariaResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IsLoaded &&
            (identical(
                    other.infoVentaDiariaResponse, infoVentaDiariaResponse) ||
                const DeepCollectionEquality().equals(
                    other.infoVentaDiariaResponse, infoVentaDiariaResponse)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(infoVentaDiariaResponse);

  @JsonKey(ignore: true)
  @override
  _$IsLoadedCopyWith<_IsLoaded> get copyWith =>
      __$IsLoadedCopyWithImpl<_IsLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function(InfoVentaDiariaResponse? infoVentaDiariaResponse)
        isLoaded,
    required TResult Function() failure,
  }) {
    return isLoaded(infoVentaDiariaResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(InfoVentaDiariaResponse? infoVentaDiariaResponse)?
        isLoaded,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (isLoaded != null) {
      return isLoaded(infoVentaDiariaResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_IsLoaded value) isLoaded,
    required TResult Function(_Failure value) failure,
  }) {
    return isLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsLoaded value)? isLoaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (isLoaded != null) {
      return isLoaded(this);
    }
    return orElse();
  }
}

abstract class _IsLoaded implements HomeState {
  const factory _IsLoaded(InfoVentaDiariaResponse? infoVentaDiariaResponse) =
      _$_IsLoaded;

  InfoVentaDiariaResponse? get infoVentaDiariaResponse =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$IsLoadedCopyWith<_IsLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
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
    return 'HomeState.failure()';
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
    required TResult Function() isLoading,
    required TResult Function(InfoVentaDiariaResponse? infoVentaDiariaResponse)
        isLoaded,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(InfoVentaDiariaResponse? infoVentaDiariaResponse)?
        isLoaded,
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
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_IsLoaded value) isLoaded,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_IsLoaded value)? isLoaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements HomeState {
  const factory _Failure() = _$_Failure;
}
