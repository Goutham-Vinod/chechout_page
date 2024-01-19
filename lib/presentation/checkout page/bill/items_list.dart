import 'package:checkout_screen_ui/domain/models/cart_items_model.dart';
import 'package:flutter/material.dart';

class ItemsList extends StatelessWidget {
  const ItemsList({
    super.key,
    required this.cartItems,
  });

  final List<CartItem> cartItems;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: cartItems.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: [
              Text(
                cartItems[index].itemName,
                style: const TextStyle(fontSize: 15),
              ),
              const Spacer(),
              Text(
                '\$${cartItems[index].price}',
                style: const TextStyle(fontSize: 15),
              ),
            ],
          ),
        );
      },
    );
  }
}
