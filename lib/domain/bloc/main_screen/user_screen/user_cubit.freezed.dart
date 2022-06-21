// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(UserDetails user) currentUser,
    required TResult Function() loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserDetails user)? currentUser,
    TResult Function()? loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserDetails user)? currentUser,
    TResult Function()? loggedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(CurrentUser value) currentUser,
    required TResult Function(LoggedOut value) loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CurrentUser value)? currentUser,
    TResult Function(LoggedOut value)? loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CurrentUser value)? currentUser,
    TResult Function(LoggedOut value)? loggedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState _value;
  // ignore: unused_field
  final $Res Function(UserState) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, (v) => _then(v as _$Initial));

  @override
  _$Initial get _value => super._value as _$Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'UserState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(UserDetails user) currentUser,
    required TResult Function() loggedOut,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserDetails user)? currentUser,
    TResult Function()? loggedOut,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserDetails user)? currentUser,
    TResult Function()? loggedOut,
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
    required TResult Function(Initial value) initial,
    required TResult Function(CurrentUser value) currentUser,
    required TResult Function(LoggedOut value) loggedOut,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CurrentUser value)? currentUser,
    TResult Function(LoggedOut value)? loggedOut,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CurrentUser value)? currentUser,
    TResult Function(LoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements UserState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$CurrentUserCopyWith<$Res> {
  factory _$$CurrentUserCopyWith(
          _$CurrentUser value, $Res Function(_$CurrentUser) then) =
      __$$CurrentUserCopyWithImpl<$Res>;
  $Res call({UserDetails user});
}

/// @nodoc
class __$$CurrentUserCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$$CurrentUserCopyWith<$Res> {
  __$$CurrentUserCopyWithImpl(
      _$CurrentUser _value, $Res Function(_$CurrentUser) _then)
      : super(_value, (v) => _then(v as _$CurrentUser));

  @override
  _$CurrentUser get _value => super._value as _$CurrentUser;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$CurrentUser(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDetails,
    ));
  }
}

/// @nodoc

class _$CurrentUser implements CurrentUser {
  const _$CurrentUser(this.user);

  @override
  final UserDetails user;

  @override
  String toString() {
    return 'UserState.currentUser(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentUser &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$CurrentUserCopyWith<_$CurrentUser> get copyWith =>
      __$$CurrentUserCopyWithImpl<_$CurrentUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(UserDetails user) currentUser,
    required TResult Function() loggedOut,
  }) {
    return currentUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserDetails user)? currentUser,
    TResult Function()? loggedOut,
  }) {
    return currentUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserDetails user)? currentUser,
    TResult Function()? loggedOut,
    required TResult orElse(),
  }) {
    if (currentUser != null) {
      return currentUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(CurrentUser value) currentUser,
    required TResult Function(LoggedOut value) loggedOut,
  }) {
    return currentUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CurrentUser value)? currentUser,
    TResult Function(LoggedOut value)? loggedOut,
  }) {
    return currentUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CurrentUser value)? currentUser,
    TResult Function(LoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (currentUser != null) {
      return currentUser(this);
    }
    return orElse();
  }
}

abstract class CurrentUser implements UserState {
  const factory CurrentUser(final UserDetails user) = _$CurrentUser;

  UserDetails get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$CurrentUserCopyWith<_$CurrentUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoggedOutCopyWith<$Res> {
  factory _$$LoggedOutCopyWith(
          _$LoggedOut value, $Res Function(_$LoggedOut) then) =
      __$$LoggedOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoggedOutCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$$LoggedOutCopyWith<$Res> {
  __$$LoggedOutCopyWithImpl(
      _$LoggedOut _value, $Res Function(_$LoggedOut) _then)
      : super(_value, (v) => _then(v as _$LoggedOut));

  @override
  _$LoggedOut get _value => super._value as _$LoggedOut;
}

/// @nodoc

class _$LoggedOut implements LoggedOut {
  const _$LoggedOut();

  @override
  String toString() {
    return 'UserState.loggedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoggedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(UserDetails user) currentUser,
    required TResult Function() loggedOut,
  }) {
    return loggedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserDetails user)? currentUser,
    TResult Function()? loggedOut,
  }) {
    return loggedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserDetails user)? currentUser,
    TResult Function()? loggedOut,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(CurrentUser value) currentUser,
    required TResult Function(LoggedOut value) loggedOut,
  }) {
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CurrentUser value)? currentUser,
    TResult Function(LoggedOut value)? loggedOut,
  }) {
    return loggedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CurrentUser value)? currentUser,
    TResult Function(LoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(this);
    }
    return orElse();
  }
}

abstract class LoggedOut implements UserState {
  const factory LoggedOut() = _$LoggedOut;
}
