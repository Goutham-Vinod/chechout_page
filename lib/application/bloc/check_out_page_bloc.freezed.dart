// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_out_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CheckOutPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? cardNumber, String? cardHolder,
            String? securityCode, String? expDate, String? zipCode)
        addCreditCard,
    required TResult Function() verifyCreditCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? cardNumber, String? cardHolder,
            String? securityCode, String? expDate, String? zipCode)?
        addCreditCard,
    TResult? Function()? verifyCreditCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? cardNumber, String? cardHolder,
            String? securityCode, String? expDate, String? zipCode)?
        addCreditCard,
    TResult Function()? verifyCreditCard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCreditCard value) addCreditCard,
    required TResult Function(_VerifyCreditCard value) verifyCreditCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCreditCard value)? addCreditCard,
    TResult? Function(_VerifyCreditCard value)? verifyCreditCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCreditCard value)? addCreditCard,
    TResult Function(_VerifyCreditCard value)? verifyCreditCard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckOutPageEventCopyWith<$Res> {
  factory $CheckOutPageEventCopyWith(
          CheckOutPageEvent value, $Res Function(CheckOutPageEvent) then) =
      _$CheckOutPageEventCopyWithImpl<$Res, CheckOutPageEvent>;
}

/// @nodoc
class _$CheckOutPageEventCopyWithImpl<$Res, $Val extends CheckOutPageEvent>
    implements $CheckOutPageEventCopyWith<$Res> {
  _$CheckOutPageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddCreditCardImplCopyWith<$Res> {
  factory _$$AddCreditCardImplCopyWith(
          _$AddCreditCardImpl value, $Res Function(_$AddCreditCardImpl) then) =
      __$$AddCreditCardImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? cardNumber,
      String? cardHolder,
      String? securityCode,
      String? expDate,
      String? zipCode});
}

/// @nodoc
class __$$AddCreditCardImplCopyWithImpl<$Res>
    extends _$CheckOutPageEventCopyWithImpl<$Res, _$AddCreditCardImpl>
    implements _$$AddCreditCardImplCopyWith<$Res> {
  __$$AddCreditCardImplCopyWithImpl(
      _$AddCreditCardImpl _value, $Res Function(_$AddCreditCardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardNumber = freezed,
    Object? cardHolder = freezed,
    Object? securityCode = freezed,
    Object? expDate = freezed,
    Object? zipCode = freezed,
  }) {
    return _then(_$AddCreditCardImpl(
      cardNumber: freezed == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      cardHolder: freezed == cardHolder
          ? _value.cardHolder
          : cardHolder // ignore: cast_nullable_to_non_nullable
              as String?,
      securityCode: freezed == securityCode
          ? _value.securityCode
          : securityCode // ignore: cast_nullable_to_non_nullable
              as String?,
      expDate: freezed == expDate
          ? _value.expDate
          : expDate // ignore: cast_nullable_to_non_nullable
              as String?,
      zipCode: freezed == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AddCreditCardImpl implements _AddCreditCard {
  const _$AddCreditCardImpl(
      {this.cardNumber,
      this.cardHolder,
      this.securityCode,
      this.expDate,
      this.zipCode});

  @override
  final String? cardNumber;
  @override
  final String? cardHolder;
  @override
  final String? securityCode;
  @override
  final String? expDate;
  @override
  final String? zipCode;

  @override
  String toString() {
    return 'CheckOutPageEvent.addCreditCard(cardNumber: $cardNumber, cardHolder: $cardHolder, securityCode: $securityCode, expDate: $expDate, zipCode: $zipCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCreditCardImpl &&
            (identical(other.cardNumber, cardNumber) ||
                other.cardNumber == cardNumber) &&
            (identical(other.cardHolder, cardHolder) ||
                other.cardHolder == cardHolder) &&
            (identical(other.securityCode, securityCode) ||
                other.securityCode == securityCode) &&
            (identical(other.expDate, expDate) || other.expDate == expDate) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, cardNumber, cardHolder, securityCode, expDate, zipCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCreditCardImplCopyWith<_$AddCreditCardImpl> get copyWith =>
      __$$AddCreditCardImplCopyWithImpl<_$AddCreditCardImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? cardNumber, String? cardHolder,
            String? securityCode, String? expDate, String? zipCode)
        addCreditCard,
    required TResult Function() verifyCreditCard,
  }) {
    return addCreditCard(
        cardNumber, cardHolder, securityCode, expDate, zipCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? cardNumber, String? cardHolder,
            String? securityCode, String? expDate, String? zipCode)?
        addCreditCard,
    TResult? Function()? verifyCreditCard,
  }) {
    return addCreditCard?.call(
        cardNumber, cardHolder, securityCode, expDate, zipCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? cardNumber, String? cardHolder,
            String? securityCode, String? expDate, String? zipCode)?
        addCreditCard,
    TResult Function()? verifyCreditCard,
    required TResult orElse(),
  }) {
    if (addCreditCard != null) {
      return addCreditCard(
          cardNumber, cardHolder, securityCode, expDate, zipCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCreditCard value) addCreditCard,
    required TResult Function(_VerifyCreditCard value) verifyCreditCard,
  }) {
    return addCreditCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCreditCard value)? addCreditCard,
    TResult? Function(_VerifyCreditCard value)? verifyCreditCard,
  }) {
    return addCreditCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCreditCard value)? addCreditCard,
    TResult Function(_VerifyCreditCard value)? verifyCreditCard,
    required TResult orElse(),
  }) {
    if (addCreditCard != null) {
      return addCreditCard(this);
    }
    return orElse();
  }
}

abstract class _AddCreditCard implements CheckOutPageEvent {
  const factory _AddCreditCard(
      {final String? cardNumber,
      final String? cardHolder,
      final String? securityCode,
      final String? expDate,
      final String? zipCode}) = _$AddCreditCardImpl;

  String? get cardNumber;
  String? get cardHolder;
  String? get securityCode;
  String? get expDate;
  String? get zipCode;
  @JsonKey(ignore: true)
  _$$AddCreditCardImplCopyWith<_$AddCreditCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyCreditCardImplCopyWith<$Res> {
  factory _$$VerifyCreditCardImplCopyWith(_$VerifyCreditCardImpl value,
          $Res Function(_$VerifyCreditCardImpl) then) =
      __$$VerifyCreditCardImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VerifyCreditCardImplCopyWithImpl<$Res>
    extends _$CheckOutPageEventCopyWithImpl<$Res, _$VerifyCreditCardImpl>
    implements _$$VerifyCreditCardImplCopyWith<$Res> {
  __$$VerifyCreditCardImplCopyWithImpl(_$VerifyCreditCardImpl _value,
      $Res Function(_$VerifyCreditCardImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VerifyCreditCardImpl implements _VerifyCreditCard {
  const _$VerifyCreditCardImpl();

  @override
  String toString() {
    return 'CheckOutPageEvent.verifyCreditCard()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VerifyCreditCardImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? cardNumber, String? cardHolder,
            String? securityCode, String? expDate, String? zipCode)
        addCreditCard,
    required TResult Function() verifyCreditCard,
  }) {
    return verifyCreditCard();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? cardNumber, String? cardHolder,
            String? securityCode, String? expDate, String? zipCode)?
        addCreditCard,
    TResult? Function()? verifyCreditCard,
  }) {
    return verifyCreditCard?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? cardNumber, String? cardHolder,
            String? securityCode, String? expDate, String? zipCode)?
        addCreditCard,
    TResult Function()? verifyCreditCard,
    required TResult orElse(),
  }) {
    if (verifyCreditCard != null) {
      return verifyCreditCard();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCreditCard value) addCreditCard,
    required TResult Function(_VerifyCreditCard value) verifyCreditCard,
  }) {
    return verifyCreditCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCreditCard value)? addCreditCard,
    TResult? Function(_VerifyCreditCard value)? verifyCreditCard,
  }) {
    return verifyCreditCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCreditCard value)? addCreditCard,
    TResult Function(_VerifyCreditCard value)? verifyCreditCard,
    required TResult orElse(),
  }) {
    if (verifyCreditCard != null) {
      return verifyCreditCard(this);
    }
    return orElse();
  }
}

abstract class _VerifyCreditCard implements CheckOutPageEvent {
  const factory _VerifyCreditCard() = _$VerifyCreditCardImpl;
}

/// @nodoc
mixin _$CheckOutPageState {
  List<CreditCardDetailsModel?> get creditCards =>
      throw _privateConstructorUsedError;
  bool? get isUserAddingCard => throw _privateConstructorUsedError;
  int? get selectedCardIndex => throw _privateConstructorUsedError;
  String? get cardTypeDetected => throw _privateConstructorUsedError;
  bool? get isCardDetailsFilled => throw _privateConstructorUsedError;
  bool? get isCardVerificationInitiated => throw _privateConstructorUsedError;
  bool? get isCardVerificationSuccess => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<CreditCardDetailsModel?> creditCards,
            bool? isUserAddingCard,
            int? selectedCardIndex,
            String? cardTypeDetected,
            bool? isCardDetailsFilled,
            bool? isCardVerificationInitiated,
            bool? isCardVerificationSuccess)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<CreditCardDetailsModel?> creditCards,
            bool? isUserAddingCard,
            int? selectedCardIndex,
            String? cardTypeDetected,
            bool? isCardDetailsFilled,
            bool? isCardVerificationInitiated,
            bool? isCardVerificationSuccess)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<CreditCardDetailsModel?> creditCards,
            bool? isUserAddingCard,
            int? selectedCardIndex,
            String? cardTypeDetected,
            bool? isCardDetailsFilled,
            bool? isCardVerificationInitiated,
            bool? isCardVerificationSuccess)?
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
  $CheckOutPageStateCopyWith<CheckOutPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckOutPageStateCopyWith<$Res> {
  factory $CheckOutPageStateCopyWith(
          CheckOutPageState value, $Res Function(CheckOutPageState) then) =
      _$CheckOutPageStateCopyWithImpl<$Res, CheckOutPageState>;
  @useResult
  $Res call(
      {List<CreditCardDetailsModel?> creditCards,
      bool? isUserAddingCard,
      int? selectedCardIndex,
      String? cardTypeDetected,
      bool? isCardDetailsFilled,
      bool? isCardVerificationInitiated,
      bool? isCardVerificationSuccess});
}

/// @nodoc
class _$CheckOutPageStateCopyWithImpl<$Res, $Val extends CheckOutPageState>
    implements $CheckOutPageStateCopyWith<$Res> {
  _$CheckOutPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creditCards = null,
    Object? isUserAddingCard = freezed,
    Object? selectedCardIndex = freezed,
    Object? cardTypeDetected = freezed,
    Object? isCardDetailsFilled = freezed,
    Object? isCardVerificationInitiated = freezed,
    Object? isCardVerificationSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      creditCards: null == creditCards
          ? _value.creditCards
          : creditCards // ignore: cast_nullable_to_non_nullable
              as List<CreditCardDetailsModel?>,
      isUserAddingCard: freezed == isUserAddingCard
          ? _value.isUserAddingCard
          : isUserAddingCard // ignore: cast_nullable_to_non_nullable
              as bool?,
      selectedCardIndex: freezed == selectedCardIndex
          ? _value.selectedCardIndex
          : selectedCardIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      cardTypeDetected: freezed == cardTypeDetected
          ? _value.cardTypeDetected
          : cardTypeDetected // ignore: cast_nullable_to_non_nullable
              as String?,
      isCardDetailsFilled: freezed == isCardDetailsFilled
          ? _value.isCardDetailsFilled
          : isCardDetailsFilled // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCardVerificationInitiated: freezed == isCardVerificationInitiated
          ? _value.isCardVerificationInitiated
          : isCardVerificationInitiated // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCardVerificationSuccess: freezed == isCardVerificationSuccess
          ? _value.isCardVerificationSuccess
          : isCardVerificationSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $CheckOutPageStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CreditCardDetailsModel?> creditCards,
      bool? isUserAddingCard,
      int? selectedCardIndex,
      String? cardTypeDetected,
      bool? isCardDetailsFilled,
      bool? isCardVerificationInitiated,
      bool? isCardVerificationSuccess});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CheckOutPageStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creditCards = null,
    Object? isUserAddingCard = freezed,
    Object? selectedCardIndex = freezed,
    Object? cardTypeDetected = freezed,
    Object? isCardDetailsFilled = freezed,
    Object? isCardVerificationInitiated = freezed,
    Object? isCardVerificationSuccess = freezed,
  }) {
    return _then(_$InitialImpl(
      creditCards: null == creditCards
          ? _value._creditCards
          : creditCards // ignore: cast_nullable_to_non_nullable
              as List<CreditCardDetailsModel?>,
      isUserAddingCard: freezed == isUserAddingCard
          ? _value.isUserAddingCard
          : isUserAddingCard // ignore: cast_nullable_to_non_nullable
              as bool?,
      selectedCardIndex: freezed == selectedCardIndex
          ? _value.selectedCardIndex
          : selectedCardIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      cardTypeDetected: freezed == cardTypeDetected
          ? _value.cardTypeDetected
          : cardTypeDetected // ignore: cast_nullable_to_non_nullable
              as String?,
      isCardDetailsFilled: freezed == isCardDetailsFilled
          ? _value.isCardDetailsFilled
          : isCardDetailsFilled // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCardVerificationInitiated: freezed == isCardVerificationInitiated
          ? _value.isCardVerificationInitiated
          : isCardVerificationInitiated // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCardVerificationSuccess: freezed == isCardVerificationSuccess
          ? _value.isCardVerificationSuccess
          : isCardVerificationSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required final List<CreditCardDetailsModel?> creditCards,
      this.isUserAddingCard,
      this.selectedCardIndex,
      this.cardTypeDetected,
      this.isCardDetailsFilled,
      this.isCardVerificationInitiated,
      this.isCardVerificationSuccess})
      : _creditCards = creditCards;

  final List<CreditCardDetailsModel?> _creditCards;
  @override
  List<CreditCardDetailsModel?> get creditCards {
    if (_creditCards is EqualUnmodifiableListView) return _creditCards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_creditCards);
  }

  @override
  final bool? isUserAddingCard;
  @override
  final int? selectedCardIndex;
  @override
  final String? cardTypeDetected;
  @override
  final bool? isCardDetailsFilled;
  @override
  final bool? isCardVerificationInitiated;
  @override
  final bool? isCardVerificationSuccess;

  @override
  String toString() {
    return 'CheckOutPageState.initial(creditCards: $creditCards, isUserAddingCard: $isUserAddingCard, selectedCardIndex: $selectedCardIndex, cardTypeDetected: $cardTypeDetected, isCardDetailsFilled: $isCardDetailsFilled, isCardVerificationInitiated: $isCardVerificationInitiated, isCardVerificationSuccess: $isCardVerificationSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality()
                .equals(other._creditCards, _creditCards) &&
            (identical(other.isUserAddingCard, isUserAddingCard) ||
                other.isUserAddingCard == isUserAddingCard) &&
            (identical(other.selectedCardIndex, selectedCardIndex) ||
                other.selectedCardIndex == selectedCardIndex) &&
            (identical(other.cardTypeDetected, cardTypeDetected) ||
                other.cardTypeDetected == cardTypeDetected) &&
            (identical(other.isCardDetailsFilled, isCardDetailsFilled) ||
                other.isCardDetailsFilled == isCardDetailsFilled) &&
            (identical(other.isCardVerificationInitiated,
                    isCardVerificationInitiated) ||
                other.isCardVerificationInitiated ==
                    isCardVerificationInitiated) &&
            (identical(other.isCardVerificationSuccess,
                    isCardVerificationSuccess) ||
                other.isCardVerificationSuccess == isCardVerificationSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_creditCards),
      isUserAddingCard,
      selectedCardIndex,
      cardTypeDetected,
      isCardDetailsFilled,
      isCardVerificationInitiated,
      isCardVerificationSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<CreditCardDetailsModel?> creditCards,
            bool? isUserAddingCard,
            int? selectedCardIndex,
            String? cardTypeDetected,
            bool? isCardDetailsFilled,
            bool? isCardVerificationInitiated,
            bool? isCardVerificationSuccess)
        initial,
  }) {
    return initial(
        creditCards,
        isUserAddingCard,
        selectedCardIndex,
        cardTypeDetected,
        isCardDetailsFilled,
        isCardVerificationInitiated,
        isCardVerificationSuccess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<CreditCardDetailsModel?> creditCards,
            bool? isUserAddingCard,
            int? selectedCardIndex,
            String? cardTypeDetected,
            bool? isCardDetailsFilled,
            bool? isCardVerificationInitiated,
            bool? isCardVerificationSuccess)?
        initial,
  }) {
    return initial?.call(
        creditCards,
        isUserAddingCard,
        selectedCardIndex,
        cardTypeDetected,
        isCardDetailsFilled,
        isCardVerificationInitiated,
        isCardVerificationSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<CreditCardDetailsModel?> creditCards,
            bool? isUserAddingCard,
            int? selectedCardIndex,
            String? cardTypeDetected,
            bool? isCardDetailsFilled,
            bool? isCardVerificationInitiated,
            bool? isCardVerificationSuccess)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(
          creditCards,
          isUserAddingCard,
          selectedCardIndex,
          cardTypeDetected,
          isCardDetailsFilled,
          isCardVerificationInitiated,
          isCardVerificationSuccess);
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

abstract class _Initial implements CheckOutPageState {
  const factory _Initial(
      {required final List<CreditCardDetailsModel?> creditCards,
      final bool? isUserAddingCard,
      final int? selectedCardIndex,
      final String? cardTypeDetected,
      final bool? isCardDetailsFilled,
      final bool? isCardVerificationInitiated,
      final bool? isCardVerificationSuccess}) = _$InitialImpl;

  @override
  List<CreditCardDetailsModel?> get creditCards;
  @override
  bool? get isUserAddingCard;
  @override
  int? get selectedCardIndex;
  @override
  String? get cardTypeDetected;
  @override
  bool? get isCardDetailsFilled;
  @override
  bool? get isCardVerificationInitiated;
  @override
  bool? get isCardVerificationSuccess;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
