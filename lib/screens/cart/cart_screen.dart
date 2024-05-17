import 'package:flutter/material.dart';
import 'package:greenit_app/screens/cart/components/body.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Body(),
    );
    ;
  }
}
