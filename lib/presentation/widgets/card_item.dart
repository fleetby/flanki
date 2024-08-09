import 'package:flanki/presentation/view_models/card_item_vm.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    required this.card,
    required this.onEditTap,
    required this.onDeleteTap,
    required this.onTap,
    super.key,
  });

  final CardItemVm card;
  final VoidCallback onEditTap;
  final VoidCallback onDeleteTap;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        child: ListTile(
          onTap: onTap,
          title: Text(card.frontPlainText),
          subtitle: Text(card.backPlainText),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: const Icon(PhosphorIconsRegular.pencil),
                onPressed: onEditTap,
              ),
              IconButton(
                icon: const Icon(PhosphorIconsRegular.trash),
                onPressed: onDeleteTap,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
