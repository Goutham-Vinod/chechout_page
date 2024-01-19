part of 'check_out_page_bloc.dart';

@freezed
class CheckOutPageState with _$CheckOutPageState {
  const factory CheckOutPageState.initial({
    required double creditCardWidth,
    required double creditCardHeight,
    required double creditCardContentOpacy,
  }) = _Initial;
}
