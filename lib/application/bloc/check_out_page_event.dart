part of 'check_out_page_bloc.dart';

@freezed
class CheckOutPageEvent with _$CheckOutPageEvent {
  const factory CheckOutPageEvent.creditCardZoomInAnimation({
  required  double mediaQueryWidth,
   required double mediaQueryHeight,
  }) = _CreditCardZoomInAnimation;
}
