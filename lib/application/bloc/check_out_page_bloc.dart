import 'package:checkout_screen_ui/domain/models/credit_card_details_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_out_page_event.dart';
part 'check_out_page_state.dart';
part 'check_out_page_bloc.freezed.dart';

class CheckOutPageBloc extends Bloc<CheckOutPageEvent, CheckOutPageState> {
  CheckOutPageBloc() : super(const _Initial(creditCards: [])) {
    on<_UpdateCreditCardDetails>((event, emit) {
      List<CreditCardDetailsModel?>? addedCreditCards = [];
      if (state.creditCards.isNotEmpty) {
        addedCreditCards = [...state.creditCards];
      }

      int index = event.index;
//--------------- Updating credit card number ----------------------------------
      if (event.cardNumber != null) {
        if (addedCreditCards.length > index) {
          addedCreditCards[index]?.cardNumber = event.cardNumber;
        } else {
          addedCreditCards
              .add(CreditCardDetailsModel(cardNumber: event.cardNumber));
        }

        if (addedCreditCards[index]?.cardNumber?.length == 19) {
          addedCreditCards[index]?.cardType = 'visa';
          emit(state.copyWith(creditCards: addedCreditCards));
        }
      }
//------------------------------------------------------------------------------
//--------------- Updating credit card security code ---------------------------
      if (event.securityCode != null) {
        if (addedCreditCards.length > index) {
          addedCreditCards[index]?.securityCode = event.securityCode;
        } else {
          addedCreditCards
              .add(CreditCardDetailsModel(securityCode: event.securityCode));
        }
        if (event.securityCode?.length == 3) {
          emit(state.copyWith(creditCards: addedCreditCards));
        }
      }
//------------------------------------------------------------------------------

//--------------- Updating card holder name ------------------------------------
      if (event.cardHolder != null) {
        if (addedCreditCards.length > index) {
          addedCreditCards[index]?.cardHolder = event.cardHolder;
        } else {
          addedCreditCards
              .add(CreditCardDetailsModel(cardHolder: event.cardHolder));
        }
        emit(state.copyWith(creditCards: addedCreditCards));
      }
//------------------------------------------------------------------------------
//--------------- Updating Credit Card Exp. Date -------------------------------
      if (event.expDate != null) {
        if (addedCreditCards.length > index) {
          addedCreditCards[index]?.expDate = event.expDate;
        } else {
          addedCreditCards.add(CreditCardDetailsModel(expDate: event.expDate));
        }
        if (event.expDate?.length == 5) {
          emit(state.copyWith(creditCards: addedCreditCards));
        }
      }
//------------------------------------------------------------------------------
//--------------- Updating Credit card Zip Code --------------------------------
      if (event.zipCode != null) {
        if (addedCreditCards.length > index) {
          addedCreditCards[index]?.zipCode = event.zipCode;
        } else {
          addedCreditCards.add(CreditCardDetailsModel(zipCode: event.zipCode));
        }
        if (event.zipCode?.length == 5) {
          emit(state.copyWith(creditCards: addedCreditCards));
        }
      }
//------------------------------------------------------------------------------
      // emit(state.copyWith(creditCards: addedCreditCards));
    });
  }
}
