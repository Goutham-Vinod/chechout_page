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

      // emit(state.copyWith(creditCards: addedCreditCards));
    });

    on<_VerifyCreditCard>((event, emit) {
      emit(state.copyWith(isCardVerificationInitiated: true));
    });
  }
}
