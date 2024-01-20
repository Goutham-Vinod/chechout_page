part of 'payment_page_bloc.dart';

@freezed
class PaymentPageState with _$PaymentPageState {
  const factory PaymentPageState.initial({
    bool? isPageLoaded,
    bool? isProcessing,
    int? loadingPercentage,
    bool? isPaymentCompleted,
    bool? isPaymentProcessEnded,
  }) = _Initial;
}
