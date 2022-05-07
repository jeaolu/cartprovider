import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

//http request

Future<List<Fetchbtcdata>> fetchbtcdata() async {
  final response = await http.get(Uri.parse(
      "https://api.nomics.com/v1/currencies/ticker?key=ffa0d5bcab78f14f1172f0cfcdfb03b2e67ac263&ids=BTC,ETH,XRP&interval=1d,30d&convert=EUR&platform-currency=ETH&per-page=100&page=1"));
  if (response.statusCode == 200) {
    List data = jsonDecode(response.body);

    //convert var data to var type list btcdata
    List<Fetchbtcdata> result =
        data.map((e) => Fetchbtcdata.fromJson(e)).toList();
    return result;
  } else {
    throw Exception('Failed.....');
  }
}

// ERROR ABOUND BASE ON THE DATA YOU ARE RECIEVING
//response to Object----class for btcdata
class Fetchbtcdata {
  final String currency;
  final String name;

  const Fetchbtcdata({
    required this.currency,
    required this.name,
  });
  // ignore: non_constant_identifier_names
  factory Fetchbtcdata.fromJson(Map<String, dynamic> json) {
    return Fetchbtcdata(currency: json['currency'], name: json['name']);
  }
}

class Modells extends StatefulWidget {
  Modells({Key? key}) : super(key: key);

  @override
  _ModellsState createState() => _ModellsState();
}

class _ModellsState extends State<Modells> {
  late Future<Fetchbtcdata> futureFetchbtcdata;
  // @override
  // void initState() {
  //   super.initState();
  //   futureFetchbtcdata =fetchbtcdata();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<List<Fetchbtcdata>>(
            future: fetchbtcdata(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, i) {
                      return Center(
                        child: Container(
                          child:
                              Center(child: Text(snapshot.data![i].currency)),
                        ),
                      );
                    });
              } else if (snapshot.hasError) {
                return Text('error');
              }
              return const CircularProgressIndicator();
            }),
      ),
    );
  }
}
