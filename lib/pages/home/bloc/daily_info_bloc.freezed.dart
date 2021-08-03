// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'daily_info_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DailyInfoEventTearOff {
  const _$DailyInfoEventTearOff();

  _Loading loading() {
    return const _Loading();
  }

  _CallInfoDiaria callInfoDiaria(dynamic user) {
    return _CallInfoDiaria(
      user,
    );
  }

  _ReInit reInit() {
    return const _ReInit();
  }
}

/// @nodoc
const $DailyInfoEvent = _$DailyInfoEventTearOff();

/// @nodoc
mixin _$DailyInfoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(dynamic user) callInfoDiaria,
    required TResult Function() reInit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(dynamic user)? callInfoDiaria,
    TResult Function()? reInit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_CallInfoDiaria value) callInfoDiaria,
    required TResult Function(_ReInit value) reInit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_CallInfoDiaria value)? callInfoDiaria,
    TResult Function(_ReInit value)? reInit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyInfoEventCopyWith<$Res> {
  factory $DailyInfoEventCopyWith(
          DailyInfoEvent value, $Res Function(DailyInfoEvent) then) =
      _$DailyInfoEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DailyInfoEventCopyWithImpl<$Res>
    implements $DailyInfoEventCopyWith<$Res> {
  _$DailyInfoEventCopyWithImpl(this._value, this._then);

  final DailyInfoEvent _value;
  // ignore: unused_field
  final $Res Function(DailyInfoEvent) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$DailyInfoEventCopyWithImpl<$Res>
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
    return 'DailyInfoEvent.loading()';
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
    required TResult Function() loading,
    required TResult Function(dynamic user) callInfoDiaria,
    required TResult Function() reInit,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(dynamic user)? callInfoDiaria,
    TResult Function()? reInit,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_CallInfoDiaria value) callInfoDiaria,
    required TResult Function(_ReInit value) reInit,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_CallInfoDiaria value)? callInfoDiaria,
    TResult Function(_ReInit value)? reInit,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements DailyInfoEvent {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$CallInfoDiariaCopyWith<$Res> {
  factory _$CallInfoDiariaCopyWith(
          _CallInfoDiaria value, $Res Function(_CallInfoDiaria) then) =
      __$CallInfoDiariaCopyWithImpl<$Res>;
  $Res call({dynamic user});
}

/// @nodoc
class __$CallInfoDiariaCopyWithImpl<$Res>
    extends _$DailyInfoEventCopyWithImpl<$Res>
    implements _$CallInfoDiariaCopyWith<$Res> {
  __$CallInfoDiariaCopyWithImpl(
      _CallInfoDiaria _value, $Res Function(_CallInfoDiaria) _then)
      : super(_value, (v) => _then(v as _CallInfoDiaria));

  @override
  _CallInfoDiaria get _value => super._value as _CallInfoDiaria;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_CallInfoDiaria(
      user == freezed ? _value.user : user,
    ));
  }
}

/// @nodoc

class _$_CallInfoDiaria implements _CallInfoDiaria {
  const _$_CallInfoDiaria(this.user);

  @override
  final dynamic user;

  @override
  String toString() {
    return 'DailyInfoEvent.callInfoDiaria(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CallInfoDiaria &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$CallInfoDiariaCopyWith<_CallInfoDiaria> get copyWith =>
      __$CallInfoDiariaCopyWithImpl<_CallInfoDiaria>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(dynamic user) callInfoDiaria,
    required TResult Function() reInit,
  }) {
    return callInfoDiaria(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(dynamic user)? callInfoDiaria,
    TResult Function()? reInit,
    required TResult orElse(),
  }) {
    if (callInfoDiaria != null) {
      return callInfoDiaria(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_CallInfoDiaria value) callInfoDiaria,
    required TResult Function(_ReInit value) reInit,
  }) {
    return callInfoDiaria(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_CallInfoDiaria value)? callInfoDiaria,
    TResult Function(_ReInit value)? reInit,
    required TResult orElse(),
  }) {
    if (callInfoDiaria != null) {
      return callInfoDiaria(this);
    }
    return orElse();
  }
}

abstract class _CallInfoDiaria implements DailyInfoEvent {
  const factory _CallInfoDiaria(dynamic user) = _$_CallInfoDiaria;

  dynamic get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CallInfoDiariaCopyWith<_CallInfoDiaria> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ReInitCopyWith<$Res> {
  factory _$ReInitCopyWith(_ReInit value, $Res Function(_ReInit) then) =
      __$ReInitCopyWithImpl<$Res>;
}

/// @nodoc
class __$ReInitCopyWithImpl<$Res> extends _$DailyInfoEventCopyWithImpl<$Res>
    implements _$ReInitCopyWith<$Res> {
  __$ReInitCopyWithImpl(_ReInit _value, $Res Function(_ReInit) _then)
      : super(_value, (v) => _then(v as _ReInit));

  @override
  _ReInit get _value => super._value as _ReInit;
}

/// @nodoc

class _$_ReInit implements _ReInit {
  const _$_ReInit();

  @override
  String toString() {
    return 'DailyInfoEvent.reInit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ReInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(dynamic user) callInfoDiaria,
    required TResult Function() reInit,
  }) {
    return reInit();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(dynamic user)? callInfoDiaria,
    TResult Function()? reInit,
    required TResult orElse(),
  }) {
    if (reInit != null) {
      return reInit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_CallInfoDiaria value) callInfoDiaria,
    required TResult Function(_ReInit value) reInit,
  }) {
    return reInit(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_CallInfoDiaria value)? callInfoDiaria,
    TResult Function(_ReInit value)? reInit,
    required TResult orElse(),
  }) {
    if (reInit != null) {
      return reInit(this);
    }
    return orElse();
  }
}

abstract class _ReInit implements DailyInfoEvent {
  const factory _ReInit() = _$_ReInit;
}

/// @nodoc
class _$DailyInfoStateTearOff {
  const _$DailyInfoStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ShowProgress showProgress() {
    return const _ShowProgress();
  }

  _Data data(InfoVentaDiariaResponse? infoVentaDiariaResponse) {
    return _Data(
      infoVentaDiariaResponse,
    );
  }

  _Failure failure() {
    return const _Failure();
  }
}

/// @nodoc
const $DailyInfoState = _$DailyInfoStateTearOff();

/// @nodoc
mixin _$DailyInfoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() showProgress,
    required TResult Function(InfoVentaDiariaResponse? infoVentaDiariaResponse)
        data,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? showProgress,
    TResult Function(InfoVentaDiariaResponse? infoVentaDiariaResponse)? data,
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
abstract class $DailyInfoStateCopyWith<$Res> {
  factory $DailyInfoStateCopyWith(
          DailyInfoState value, $Res Function(DailyInfoState) then) =
      _$DailyInfoStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DailyInfoStateCopyWithImpl<$Res>
    implements $DailyInfoStateCopyWith<$Res> {
  _$DailyInfoStateCopyWithImpl(this._value, this._then);

  final DailyInfoState _value;
  // ignore: unused_field
  final $Res Function(DailyInfoState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$DailyInfoStateCopyWithImpl<$Res>
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
    return 'DailyInfoState.initial()';
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
    required TResult Function(InfoVentaDiariaResponse? infoVentaDiariaResponse)
        data,
    required TResult Function() failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? showProgress,
    TResult Function(InfoVentaDiariaResponse? infoVentaDiariaResponse)? data,
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

abstract class _Initial implements DailyInfoState {
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
    extends _$DailyInfoStateCopyWithImpl<$Res>
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
    return 'DailyInfoState.showProgress()';
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
    required TResult Function(InfoVentaDiariaResponse? infoVentaDiariaResponse)
        data,
    required TResult Function() failure,
  }) {
    return showProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? showProgress,
    TResult Function(InfoVentaDiariaResponse? infoVentaDiariaResponse)? data,
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

abstract class _ShowProgress implements DailyInfoState {
  const factory _ShowProgress() = _$_ShowProgress;
}

/// @nodoc
abstract class _$DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) =
      __$DataCopyWithImpl<$Res>;
  $Res call({InfoVentaDiariaResponse? infoVentaDiariaResponse});
}

/// @nodoc
class __$DataCopyWithImpl<$Res> extends _$DailyInfoStateCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(_Data _value, $Res Function(_Data) _then)
      : super(_value, (v) => _then(v as _Data));

  @override
  _Data get _value => super._value as _Data;

  @override
  $Res call({
    Object? infoVentaDiariaResponse = freezed,
  }) {
    return _then(_Data(
      infoVentaDiariaResponse == freezed
          ? _value.infoVentaDiariaResponse
          : infoVentaDiariaResponse // ignore: cast_nullable_to_non_nullable
              as InfoVentaDiariaResponse?,
    ));
  }
}

/// @nodoc

class _$_Data implements _Data {
  const _$_Data(this.infoVentaDiariaResponse);

  @override
  final InfoVentaDiariaResponse? infoVentaDiariaResponse;

  @override
  String toString() {
    return 'DailyInfoState.data(infoVentaDiariaResponse: $infoVentaDiariaResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Data &&
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
  _$DataCopyWith<_Data> get copyWith =>
      __$DataCopyWithImpl<_Data>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() showProgress,
    required TResult Function(InfoVentaDiariaResponse? infoVentaDiariaResponse)
        data,
    required TResult Function() failure,
  }) {
    return data(infoVentaDiariaResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? showProgress,
    TResult Function(InfoVentaDiariaResponse? infoVentaDiariaResponse)? data,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(infoVentaDiariaResponse);
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

abstract class _Data implements DailyInfoState {
  const factory _Data(InfoVentaDiariaResponse? infoVentaDiariaResponse) =
      _$_Data;

  InfoVentaDiariaResponse? get infoVentaDiariaResponse =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DataCopyWith<_Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$DailyInfoStateCopyWithImpl<$Res>
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
    return 'DailyInfoState.failure()';
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
    required TResult Function(InfoVentaDiariaResponse? infoVentaDiariaResponse)
        data,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? showProgress,
    TResult Function(InfoVentaDiariaResponse? infoVentaDiariaResponse)? data,
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

abstract class _Failure implements DailyInfoState {
  const factory _Failure() = _$_Failure;
}
