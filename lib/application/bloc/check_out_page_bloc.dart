import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_out_page_event.dart';
part 'check_out_page_state.dart';
part 'check_out_page_bloc.freezed.dart';

class CheckOutPageBloc extends Bloc<CheckOutPageEvent, CheckOutPageState> {
  CheckOutPageBloc()
      : super(const _Initial(
          creditCardWidth: 0.85,
          creditCardHeight: 0.26,
          creditCardContentOpacy: 0,
        )) {
    on<_CreditCardZoomInAnimation>((event, emit) {
      double width = event.mediaQueryWidth;
      double height = event.mediaQueryHeight;

      emit(state.copyWith(
          creditCardHeight: height * 0.26, creditCardWidth: width * 0.85));

      Future.delayed(const Duration(milliseconds: 500))
          .then((value) => emit(state.copyWith(creditCardContentOpacy: 1)));
    });
  }
}
