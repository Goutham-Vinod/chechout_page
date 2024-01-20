// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:carousel_slider/carousel_slider.dart';
import 'package:checkout_screen_ui/application/check_out_page/check_out_page_bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddedCreditCardList extends StatelessWidget {
  const AddedCreditCardList({
    Key? key,
    required this.mediaQueryHeight,
    required this.mediaQueryWidth,
    required this.carouselElements,
  }) : super(key: key);

  final double mediaQueryHeight;
  final double mediaQueryWidth;
  final List<Widget> carouselElements;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: mediaQueryHeight * 0.29,
        width: mediaQueryWidth,
        child: CarouselSlider(
            disableGesture: true,
            items: [...carouselElements],
            options: CarouselOptions(
              pageSnapping: true,
              enableInfiniteScroll: false,
              aspectRatio: (mediaQueryWidth * 0.15) / (mediaQueryHeight * 0.26),
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                BlocProvider.of<CheckOutPageBloc>(context).add(
                    CheckOutPageEvent.selectCard(selectedCardIndex: index));
              },
            )),
      ),
    );
  }
}
