import 'package:flutter/material.dart';

class SimpleContentContainer extends StatelessWidget {
  final Widget head;
  final Widget child;
  final Widget bottom;
  final bool expand;

  const SimpleContentContainer({super.key, this.head = const SizedBox(), this.bottom = const SizedBox(), this.child = const SizedBox(), this.expand = false});

  factory SimpleContentContainer.listView({
    Widget head = const SizedBox(),
    Widget bottom = const SizedBox(),
    List<dynamic> itens = const [],
    required Function itemBuilder,
    String emptyText = '',
    IconData emptyIcon = Icons.info,
  }) => SimpleContentContainer(
    head: head,
    bottom: bottom,
    expand: true,
    child:
        itens.isEmpty
            ? _buildEmpty(emptyText: emptyText, emptyIcon: emptyIcon)
            : ListView.builder(itemCount: itens.length, itemBuilder: (_, idx) => itemBuilder(itens[idx])),
  );

  static Widget _buildEmpty({String emptyText = '', IconData emptyIcon = Icons.info}) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(padding: const EdgeInsets.only(bottom: 8.0), child: Icon(emptyIcon, size: 48, color: Colors.black45)),
          Padding(padding: const EdgeInsets.all(8.0), child: Text(emptyText, textAlign: TextAlign.center, style: const TextStyle(color: Colors.black45))),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[_buildHead(), _buildBody(), _buildBottom()]);
  }

  Widget _buildHead() {
    return head;
  }

  Widget _buildBody() {
    if (expand) {
      return Expanded(child: child);
    }

    return child;
  }

  Widget _buildBottom() {
    return bottom;
  }
}
