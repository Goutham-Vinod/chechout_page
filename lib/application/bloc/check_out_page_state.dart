part of 'check_out_page_bloc.dart';

@freezed
class CheckOutPageState with _$CheckOutPageState {
  const factory CheckOutPageState.initial({
    required List<CreditCardDetailsModel?> creditCards,
    bool? isUserAddingCard,
    int? selectedCardIndex,
    String? cardTypeDetected,
    bool? isCardDetailsFilled,
    bool? isCardVerificationInitiated,
    bool? isCardVerificationSuccess,
  }) = _Initial;
}
