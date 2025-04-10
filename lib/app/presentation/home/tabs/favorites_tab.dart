import 'package:flutter/widgets.dart';
import 'package:flutter_ddd/app/presentation/home/home_controller.dart';
import 'package:flutter_ddd/app/presentation/home/widgets/quote_summary_widget.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class FavoritesTab extends StatelessWidget {
  const FavoritesTab({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Modular.get<HomeController>();

    return Observer(
      builder: (context) {
        return homeController.favoriteQuotes.isEmpty
            ? Text('Nenhum favorito')
            : Column(children: homeController.favoriteQuotes.map((quote) => QuoteSummaryWidget(quote: quote)).toList());
      },
    );
  }
}
