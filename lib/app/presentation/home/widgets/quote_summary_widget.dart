import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_ddd/app/domain/entities/quote_summary_entity.dart';
import 'package:flutter_ddd/app/presentation/home/home_controller.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class QuoteSummaryWidget extends StatelessWidget {
  final QuoteSummaryEntity quote;
  const QuoteSummaryWidget({super.key, required this.quote});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Modular.get<HomeController>();

    return Observer(
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Bounceable(
            onTap: () => Modular.to.pushNamed('/quote/', arguments: {'symbol': quote.symbol}),
            child: Card(
              child: ListTile(
                leading: Bounceable(
                  onTap: () {
                    homeController.updateFavorite(symbol: quote.symbol);
                  },
                  child:
                      homeController.favoritesList.data!.any((fav) => fav.symbol == quote.symbol)
                          ? Icon(Icons.star)
                          : Icon(Icons.star_border),
                ),
                title: Text(quote.symbol),
                subtitle: Text(quote.price),
                trailing: Icon(Icons.keyboard_arrow_right_outlined),
              ),
            ),
          ),
        );
      },
    );
  }
}
