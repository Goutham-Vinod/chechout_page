import 'package:bloc/bloc.dart';
import 'package:checkout_screen_ui/infrastructure/api_services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_page_event.dart';
part 'payment_page_state.dart';
part 'payment_page_bloc.freezed.dart';

class PaymentPageBloc extends Bloc<PaymentPageEvent, PaymentPageState> {
  PaymentPageBloc() : super(const _Initial()) {
    on<_ProcessPayment>((event, emit) async {
      await Future.delayed(const Duration(milliseconds: 50));
      // at this emit ui animation starts
      emit(state.copyWith(isPageLoaded: true));
      await Future.delayed(const Duration(milliseconds: 500));
      // at this emit processing animation will be shown
      emit(state.copyWith(
        isProcessing: true,
        loadingPercentage: 0,
      ));
      int loadingPercentage = 0;
      for (var i = 0; i < 4; i++) {
        await Future.delayed(const Duration(milliseconds: 500));
        // at this emit dots at ui starts getting visible based on percentage
        emit(state.copyWith(loadingPercentage: loadingPercentage));
        loadingPercentage += 25;
      }
      await Future.delayed(const Duration(milliseconds: 500));
      ApiServices.fakeApiCall();
      emit(state.copyWith(isPaymentCompleted: true));
      await Future.delayed(const Duration(milliseconds: 2000));
// at this emit the payment will be navigated back to checkout page
      emit(state.copyWith(isPaymentProcessEnded: true));
      // resetting values for next payment 
      emit(state.copyWith(
        isPaymentProcessEnded: false,
        isPageLoaded: false,
        isPaymentCompleted: false,
        isProcessing: false,
        loadingPercentage: 0,
      ));
    });
  }
}
