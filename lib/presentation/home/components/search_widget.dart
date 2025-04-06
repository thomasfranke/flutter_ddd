import 'package:flutter/material.dart';
import 'package:flutter_ddd/presentation/home/home_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    HomeStore homeStore = Modular.get<HomeStore>();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        onChanged: (filter) => homeStore.getCurrencies(filter: filter),
        decoration: const InputDecoration(labelText: "Search", border: OutlineInputBorder()),
      ),
    );
  }
}
