part of 'check_out_page_bloc.dart';

@freezed
class CheckOutPageEvent with _$CheckOutPageEvent {
  const factory CheckOutPageEvent.addCreditCard({
    String? cardNumber,
    String? cardHolder,
    String? securityCode,
    String? expDate,
    String? zipCode,
  }) = _AddCreditCard;
  const factory CheckOutPageEvent.verifyCreditCard() = _VerifyCreditCard;
  const factory CheckOutPageEvent.selectCard({required int selectedCardIndex}) = _SelectCard;
}
