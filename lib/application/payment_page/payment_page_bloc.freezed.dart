// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() processPayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? processPayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? processPayment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProcessPayment value) processPayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProcessPayment value)? processPayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProcessPayment value)? processPayment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentPageEventCopyWith<$Res> {
  factory $PaymentPageEventCopyWith(
          PaymentPageEvent value, $Res Function(PaymentPageEvent) then) =
      _$PaymentPageEventCopyWithImpl<$Res, PaymentPageEvent>;
}

/// @nodoc
class _$PaymentPageEventCopyWithImpl<$Res, $Val extends PaymentPageEvent>
    implements $PaymentPageEventCopyWith<$Res> {
  _$PaymentPageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProcessPaymentImplCopyWith<$Res> {
  factory _$$ProcessPaymentImplCopyWith(_$ProcessPaymentImpl value,
          $Res Function(_$ProcessPaymentImpl) then) =
      __$$ProcessPaymentImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProcessPaymentImplCopyWithImpl<$Res>
    extends _$PaymentPageEventCopyWithImpl<$Res, _$ProcessPaymentImpl>
    implements _$$ProcessPaymentImplCopyWith<$Res> {
  __$$ProcessPaymentImplCopyWithImpl(
      _$ProcessPaymentImpl _value, $Res Function(_$ProcessPaymentImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProcessPaymentImpl implements _ProcessPayment {
  const _$ProcessPaymentImpl();

  @override
  String toString() {
    return 'PaymentPageEvent.processPayment()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProcessPaymentImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() processPayment,
  }) {
    return processPayment();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? processPayment,
  }) {
    return processPayment?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? processPayment,
    required TResult orElse(),
  }) {
    if (processPayment != null) {
      return processPayment();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProcessPayment value) processPayment,
  }) {
    return processPayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProcessPayment value)? processPayment,
  }) {
    return processPayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProcessPayment value)? processPayment,
    required TResult orElse(),
  }) {
    if (processPayment != null) {
      return processPayment(this);
    }
    return orElse();
  }
}

abstract class _ProcessPayment implements PaymentPageEvent {
  const factory _ProcessPayment() = _$ProcessPaymentImpl;
}

/// @nodoc
mixin _$PaymentPageState {
  bool? get isPageLoaded => throw _privateConstructorUsedError;
  bool? get isProcessing => throw _privateConstructorUsedError;
  int? get loadingPercentage => throw _privateConstructorUsedError;
  bool? get isPaymentCompleted => throw _privateConstructorUsedError;
  bool? get isPaymentProcessEnded => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool? isPageLoaded,
            bool? isProcessing,
            int? loadingPercentage,
            bool? isPaymentCompleted,
            bool? isPaymentProcessEnded)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool? isPageLoaded,
            bool? isProcessing,
            int? loadingPercentage,
            bool? isPaymentCompleted,
            bool? isPaymentProcessEnded)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool? isPageLoaded,
            bool? isProcessing,
            int? loadingPercentage,
            bool? isPaymentCompleted,
            bool? isPaymentProcessEnded)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentPageStateCopyWith<PaymentPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentPageStateCopyWith<$Res> {
  factory $PaymentPageStateCopyWith(
          PaymentPageState value, $Res Function(PaymentPageState) then) =
      _$PaymentPageStateCopyWithImpl<$Res, PaymentPageState>;
  @useResult
  $Res call(
      {bool? isPageLoaded,
      bool? isProcessing,
      int? loadingPercentage,
      bool? isPaymentCompleted,
      bool? isPaymentProcessEnded});
}

/// @nodoc
class _$PaymentPageStateCopyWithImpl<$Res, $Val extends PaymentPageState>
    implements $PaymentPageStateCopyWith<$Res> {
  _$PaymentPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPageLoaded = freezed,
    Object? isProcessing = freezed,
    Object? loadingPercentage = freezed,
    Object? isPaymentCompleted = freezed,
    Object? isPaymentProcessEnded = freezed,
  }) {
    return _then(_value.copyWith(
      isPageLoaded: freezed == isPageLoaded
          ? _value.isPageLoaded
          : isPageLoaded // ignore: cast_nullable_to_non_nullable
              as bool?,
      isProcessing: freezed == isProcessing
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool?,
      loadingPercentage: freezed == loadingPercentage
          ? _value.loadingPercentage
          : loadingPercentage // ignore: cast_nullable_to_non_nullable
              as int?,
      isPaymentCompleted: freezed == isPaymentCompleted
          ? _value.isPaymentCompleted
          : isPaymentCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPaymentProcessEnded: freezed == isPaymentProcessEnded
          ? _value.isPaymentProcessEnded
          : isPaymentProcessEnded // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $PaymentPageStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? isPageLoaded,
      bool? isProcessing,
      int? loadingPercentage,
      bool? isPaymentCompleted,
      bool? isPaymentProcessEnded});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$PaymentPageStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPageLoaded = freezed,
    Object? isProcessing = freezed,
    Object? loadingPercentage = freezed,
    Object? isPaymentCompleted = freezed,
    Object? isPaymentProcessEnded = freezed,
  }) {
    return _then(_$InitialImpl(
      isPageLoaded: freezed == isPageLoaded
          ? _value.isPageLoaded
          : isPageLoaded // ignore: cast_nullable_to_non_nullable
              as bool?,
      isProcessing: freezed == isProcessing
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool?,
      loadingPercentage: freezed == loadingPercentage
          ? _value.loadingPercentage
          : loadingPercentage // ignore: cast_nullable_to_non_nullable
              as int?,
      isPaymentCompleted: freezed == isPaymentCompleted
          ? _value.isPaymentCompleted
          : isPaymentCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPaymentProcessEnded: freezed == isPaymentProcessEnded
          ? _value.isPaymentProcessEnded
          : isPaymentProcessEnded // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.isPageLoaded,
      this.isProcessing,
      this.loadingPercentage,
      this.isPaymentCompleted,
      this.isPaymentProcessEnded});

  @override
  final bool? isPageLoaded;
  @override
  final bool? isProcessing;
  @override
  final int? loadingPercentage;
  @override
  final bool? isPaymentCompleted;
  @override
  final bool? isPaymentProcessEnded;

  @override
  String toString() {
    return 'PaymentPageState.initial(isPageLoaded: $isPageLoaded, isProcessing: $isProcessing, loadingPercentage: $loadingPercentage, isPaymentCompleted: $isPaymentCompleted, isPaymentProcessEnded: $isPaymentProcessEnded)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isPageLoaded, isPageLoaded) ||
                other.isPageLoaded == isPageLoaded) &&
            (identical(other.isProcessing, isProcessing) ||
                other.isProcessing == isProcessing) &&
            (identical(other.loadingPercentage, loadingPercentage) ||
                other.loadingPercentage == loadingPercentage) &&
            (identical(other.isPaymentCompleted, isPaymentCompleted) ||
                other.isPaymentCompleted == isPaymentCompleted) &&
            (identical(other.isPaymentProcessEnded, isPaymentProcessEnded) ||
                other.isPaymentProcessEnded == isPaymentProcessEnded));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isPageLoaded, isProcessing,
      loadingPercentage, isPaymentCompleted, isPaymentProcessEnded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool? isPageLoaded,
            bool? isProcessing,
            int? loadingPercentage,
            bool? isPaymentCompleted,
            bool? isPaymentProcessEnded)
        initial,
  }) {
    return initial(isPageLoaded, isProcessing, loadingPercentage,
        isPaymentCompleted, isPaymentProcessEnded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool? isPageLoaded,
            bool? isProcessing,
            int? loadingPercentage,
            bool? isPaymentCompleted,
            bool? isPaymentProcessEnded)?
        initial,
  }) {
    return initial?.call(isPageLoaded, isProcessing, loadingPercentage,
        isPaymentCompleted, isPaymentProcessEnded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool? isPageLoaded,
            bool? isProcessing,
            int? loadingPercentage,
            bool? isPaymentCompleted,
            bool? isPaymentProcessEnded)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(isPageLoaded, isProcessing, loadingPercentage,
          isPaymentCompleted, isPaymentProcessEnded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PaymentPageState {
  const factory _Initial(
      {final bool? isPageLoaded,
      final bool? isProcessing,
      final int? loadingPercentage,
      final bool? isPaymentCompleted,
      final bool? isPaymentProcessEnded}) = _$InitialImpl;

  @override
  bool? get isPageLoaded;
  @override
  bool? get isProcessing;
  @override
  int? get loadingPercentage;
  @override
  bool? get isPaymentCompleted;
  @override
  bool? get isPaymentProcessEnded;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
