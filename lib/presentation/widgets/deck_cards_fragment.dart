import 'package:animated_list_plus/animated_list_plus.dart';
import 'package:animated_list_plus/transitions.dart';
import 'package:flanki/presentation/app_router.gr.dart';
import 'package:flanki/presentation/blocs/cards/cards_bloc.dart';
import 'package:flanki/presentation/blocs/deck/deck_bloc.dart';
import 'package:flanki/presentation/localizations/app_localizations.dart';
import 'package:flanki/presentation/widgets/card_details_dialog.dart';
import 'package:flanki/presentation/widgets/card_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DeckCardsFragment extends StatelessWidget {
  const DeckCardsFragment({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final tr = AppLocalizations.of(context);
    return BlocListener<DeckBloc, DeckState>(
      listener: (context, state) {
        if (state case DeckLoaded(:final deck)) {
          context.read<CardsBloc>().add(CardsLoad(deckId: deck.id));
        }
      },
      child: BlocBuilder<CardsBloc, CardsState>(
        builder: (context, state) => switch (state) {
          CardsLoaded(:final cards) => ImplicitlyAnimatedList(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              items: cards,
              areItemsTheSame: (oldItem, newItem) => oldItem.id == newItem.id,
              itemBuilder: (context, animation, card, index) {
                return SizeFadeTransition(
                  sizeFraction: 0.7,
                  curve: Curves.easeInOut,
                  animation: animation,
                  child: CardItem(
                    card: card,
                    onTap: () => showCardDetailsDialog(
                      context,
                      interval: card.schedulingInfo?.interval,
                      repetitions: card.schedulingInfo?.repetitions,
                      easeFactor: card.schedulingInfo?.easeFactor,
                      ratedAt: card.schedulingInfo?.ratedAt,
                      nextRepetitionAt: card.schedulingInfo?.nextRepetitionAt,
                    ),
                    onEditTap: () async {
                      await CreateCardRoute(deckId: null, cardId: card.id)
                          .push<void>(context);
                    },
                    onDeleteTap: () => context
                        .read<CardsBloc>()
                        .add(CardsDelete(cardId: card.id)),
                  ),
                );
              },
            ),
          CardsInitial() || CardsLoading() => const Center(
              child: CircularProgressIndicator(),
            ),
          CardsError() => Center(
              child: Text(tr.couldNotLoadCardsError),
            ),
        },
      ),
    );
  }
}
