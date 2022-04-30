import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './model/item.dart';
import './model/cart.dart';

class CheckOut extends StatefulWidget {
  CheckOut({Key? key}) : super(key: key);

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckOut'),
      ),
      body: Consumer<Cart>(builder: ((context, cart, child) {
        return ListView.builder(
            itemCount: cart.basketitem.length,
            itemBuilder: (context, index) {
              return Card(
                  child: ListTile(
                title: Text(cart.basketitem[index].name),
                trailing: IconButton(
                  onPressed: () {
                    cart.remove(cart.basketitem[index]);
                  },
                  icon: Icon(Icons.remove),
                ),
              ));
            });
      })),
    );
  }
}
