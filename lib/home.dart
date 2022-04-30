import 'package:cartprovider/checkout.dart';
import 'package:cartprovider/model/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './model/item.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Item> items = [
    Item(name: "S20 ultra", price: 250),
    Item(name: "p30 pro", price: 350),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          actions: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return CheckOut();
                      }));
                    },
                    icon: Icon(Icons.add_shopping_cart)),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  //consuming the function in cart model
                  child: Consumer<Cart>(
                    builder: ((context, cart, child) {
                      return Text(cart.count.toString());
                    }),
                  ),
                )
              ],
            )
          ],
        ),
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Card(
                  child: Consumer<Cart>(builder: (context, cart, child) {
                return ListTile(
                  title: Text(items[index].name),
                  trailing: IconButton(
                    onPressed: () {
                      cart.add(items[index]);
                    },
                    icon: Icon(Icons.add),
                  ),
                );
              }));
            }));
  }
}
