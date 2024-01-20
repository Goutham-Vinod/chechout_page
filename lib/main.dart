import 'package:checkout_screen_ui/application/check_out_page/check_out_page_bloc.dart';
import 'package:checkout_screen_ui/application/payment_page/payment_page_bloc.dart';
import 'package:checkout_screen_ui/presentation/checkout_page/checkout_page.dart';
import 'package:checkout_screen_ui/presentation/payment_page/payment_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CheckOutPageBloc(),
        ),
        BlocProvider(
          create: (context) => PaymentPageBloc(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CheckoutPage(),
      ),
    );
  }
}
