import 'package:flutter/material.dart';
import 'package:flutter_ddd/app/presentation/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Modular.get<HomeController>();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        onChanged: (filter) => homeController.getCurrencies(filter: filter),
        decoration: const InputDecoration(labelText: "Search", border: OutlineInputBorder()),
      ),
    );
  }
}
