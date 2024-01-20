import 'dart:developer';

import 'package:checkout_screen_ui/domain/models/credit_card_details_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_out_page_event.dart';
part 'check_out_page_state.dart';
part 'check_out_page_bloc.freezed.dart';

class CheckOutPageBloc extends Bloc<CheckOutPageEvent, CheckOutPageState> {
  CheckOutPageBloc() : super(const _Initial(creditCards: [])) {
    on<_AddCreditCard>((event, emit) {
      String cardType;
      List<CreditCardDetailsModel?>? creditCards = [];
      // fetching credit cards which are already saved (if any)
      if (state.creditCards.isNotEmpty) {
        creditCards = [...state.creditCards];
      }

// Notifying ui to open add credit card widget
      emit(state.copyWith(isUserAddingCard: true));

//--------------- Detecting credit card type (Fake) ----------------------------
// let's assume we hot visa as the credit card type..
      if (event.cardNumber?.length == 19) {
        cardType = 'visa';
        emit(state.copyWith(cardTypeDetected: cardType));
        log('visa card detected');
      }
//------------------------------------------------------------------------------

//--------------- Checking Credit card completely filled or not ----------------
      if (event.cardHolder != null) {
        if (event.cardNumber?.length == 19 &&
            event.securityCode?.length == 3 &&
            event.cardHolder!.length > 2 &&
            event.expDate?.length == 5 &&
            event.zipCode?.length == 5) {
          CreditCardDetailsModel newCreditCard = CreditCardDetailsModel(
            index: creditCards.length,
            cardNumber: event.cardNumber,
            securityCode: event.securityCode,
            cardHolder: event.cardHolder,
            expDate: event.expDate,
            zipCode: event.zipCode,
          );

          creditCards.add(newCreditCard);
          emit(state.copyWith(
            isCardDetailsFilled: true,
            creditCards: creditCards,
          ));
        }
      }
//------------------------------------------------------------------------------
    });

    on<_VerifyCreditCard>((event, emit) async {
      // Notifying ui to show card verification animation
      emit(state.copyWith(
        isCardVerificationInitiated: true,
      ));
      // faking the verification percentage using future delayed
      await Future.delayed(const Duration(milliseconds: 500));
      int loadingPercentage = 0;
      for (var i = 0; i < 3; i++) {
        loadingPercentage += 30;
        emit(state.copyWith(cardVerificationPercentage: loadingPercentage));
        await Future.delayed(const Duration(milliseconds: 500));
      }
      // Notifying ui to show card verification success animation
      emit(state.copyWith(
        isCardVerificationSuccess: true,
      ));
// resetting the values - So that the user can add another card
      await Future.delayed(const Duration(milliseconds: 1500));
      emit(state.copyWith(
          isUserAddingCard: false,
          isCardDetailsFilled: false,
          isCardVerificationInitiated: false,
          isCardVerificationSuccess: false));
    });

    on<_SelectCard>((event, emit) {
      log('Selected card : ${event.selectedCardIndex}');
      emit(state.copyWith(selectedCardIndex: event.selectedCardIndex));
    });
  }
}
