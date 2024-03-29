
import 'package:checkout_screen_ui/application/check_out_page/check_out_page_bloc.dart';
import 'package:checkout_screen_ui/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddNewCard extends StatelessWidget {
  const AddNewCard({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        BlocProvider.of<CheckOutPageBloc>(context)
            .add(const CheckOutPageEvent.addCreditCard());
      },
      child: Container(
        height: height * 0.25,
        width: width * 0.85,
        decoration: BoxDecoration(
            color: Constants.brownColor1,
            border: Border.all(color: Constants.brownColor2, width: 2),
            borderRadius: BorderRadius.circular(10)),
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.add_circle,
                color: Constants.brownColor,
                size: 60,
              ),
              SizedBox(height: 5),
              Text(
                'Add a new card',
                style: TextStyle(color: Constants.brownColor, fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
