import 'package:flanki/domain/models/deck_model.dart';
import 'package:flanki/presentation/app_router.gr.dart';
import 'package:flanki/presentation/localizations/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class DeckItem extends StatelessWidget {
  const DeckItem({
    required this.deck,
    required this.onPinTap,
    super.key,
  });

  final DeckModel deck;
  final VoidCallback onPinTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final tr = AppLocalizations.of(context);
    final cardStatusCount = deck.cardStatusCount!;
    final percentCompleted = cardStatusCount.total == 0
        ? 0
        : (cardStatusCount.review / cardStatusCount.total * 100).floor();
    return Card.outlined(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () => DeckRoute(deckId: deck.id).push<void>(context),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    deck.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleLarge,
                  ),
                  IconButton(
                    onPressed: onPinTap,
                    icon: deck.pinned
                        ? const Icon(PhosphorIconsFill.pushPin)
                        : const Icon(PhosphorIconsRegular.pushPin),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              DefaultTextStyle(
                style: theme.textTheme.bodyLarge!,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(tr.percentCompleted(percentCompleted)),
                    Text(
                      tr.learnedOfTotalCards(
                        cardStatusCount.review,
                        cardStatusCount.total,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 4),
              Stack(
                children: [
                  LinearProgressIndicator(
                    value: 1,
                    borderRadius: BorderRadius.circular(8),
                    minHeight: 12,
                    color: theme.colorScheme.surfaceContainer,
                    // color: CardStatus.initial.getColor(context),
                    backgroundColor: Colors.transparent,
                  ),
                  LinearProgressIndicator(
                    value: cardStatusCount.total == 0
                        ? 0
                        : (cardStatusCount.learning + cardStatusCount.review) /
                            cardStatusCount.total,
                    borderRadius: BorderRadius.circular(8),
                    minHeight: 12,
                    color: theme.colorScheme.primaryContainer,
                    //  color: CardStatus.learning.getColor(context),
                    backgroundColor: Colors.transparent,
                  ),
                  LinearProgressIndicator(
                    value: cardStatusCount.total == 0
                        ? 0
                        : cardStatusCount.review / cardStatusCount.total,
                    borderRadius: BorderRadius.circular(8),
                    minHeight: 12,
                    color: theme.colorScheme.primary,
                    //  color: CardStatus.review.getColor(context),
                    backgroundColor: Colors.transparent,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
