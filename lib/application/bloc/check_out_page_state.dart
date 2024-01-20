part of 'check_out_page_bloc.dart';

@freezed
class CheckOutPageState with _$CheckOutPageState {
  const factory CheckOutPageState.initial({
   required List<CreditCardDetailsModel?> creditCards,
  }) = _Initial;
}
