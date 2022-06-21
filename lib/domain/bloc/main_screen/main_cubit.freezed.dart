// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'main_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainState {
  int get page => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) selectPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page)? selectPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? selectPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectPage value) selectPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SelectPage value)? selectPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectPage value)? selectPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainStateCopyWith<MainState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res>;
  $Res call({int page});
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res> implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

  final MainState _value;
  // ignore: unused_field
  final $Res Function(MainState) _then;

  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$SelectPageCopyWith<$Res> implements $MainStateCopyWith<$Res> {
  factory _$$SelectPageCopyWith(
          _$SelectPage value, $Res Function(_$SelectPage) then) =
      __$$SelectPageCopyWithImpl<$Res>;
  @override
  $Res call({int page});
}

/// @nodoc
class __$$SelectPageCopyWithImpl<$Res> extends _$MainStateCopyWithImpl<$Res>
    implements _$$SelectPageCopyWith<$Res> {
  __$$SelectPageCopyWithImpl(
      _$SelectPage _value, $Res Function(_$SelectPage) _then)
      : super(_value, (v) => _then(v as _$SelectPage));

  @override
  _$SelectPage get _value => super._value as _$SelectPage;

  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(_$SelectPage(
      page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelectPage implements SelectPage {
  const _$SelectPage(this.page);

  @override
  final int page;

  @override
  String toString() {
    return 'MainState.selectPage(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectPage &&
            const DeepCollectionEquality().equals(other.page, page));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(page));

  @JsonKey(ignore: true)
  @override
  _$$SelectPageCopyWith<_$SelectPage> get copyWith =>
      __$$SelectPageCopyWithImpl<_$SelectPage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) selectPage,
  }) {
    return selectPage(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page)? selectPage,
  }) {
    return selectPage?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? selectPage,
    required TResult orElse(),
  }) {
    if (selectPage != null) {
      return selectPage(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectPage value) selectPage,
  }) {
    return selectPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SelectPage value)? selectPage,
  }) {
    return selectPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectPage value)? selectPage,
    required TResult orElse(),
  }) {
    if (selectPage != null) {
      return selectPage(this);
    }
    return orElse();
  }
}

abstract class SelectPage implements MainState {
  const factory SelectPage(final int page) = _$SelectPage;

  @override
  int get page => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$SelectPageCopyWith<_$SelectPage> get copyWith =>
      throw _privateConstructorUsedError;
}
