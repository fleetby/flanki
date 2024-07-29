import 'package:animated_list_plus/animated_list_plus.dart';
import 'package:animated_list_plus/transitions.dart';
import 'package:flanki/presentation/blocs/decks/decks_bloc.dart';
import 'package:flanki/presentation/localizations/app_localizations.dart';
import 'package:flanki/presentation/widgets/create_deck_dialog.dart';
import 'package:flanki/presentation/widgets/deck_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class DecksBody extends StatelessWidget {
  const DecksBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final tr = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(tr.decksDestinationLabel),
        centerTitle: true,
      ),
      body: BlocBuilder<DecksBloc, DecksState>(
        builder: (context, state) => ImplicitlyAnimatedList(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          items: state.decks,
          areItemsTheSame: (oldItem, newItem) => oldItem.id == newItem.id,
          itemBuilder: (context, animation, deck, index) {
            return SizeFadeTransition(
              sizeFraction: 0.7,
              curve: Curves.easeInOut,
              animation: animation,
              child: DeckItem(
                deck: deck,
                onPinTap: () =>
                    context.read<DecksBloc>().add(DecksPin(index: index)),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await showCreateDeckDialog(context);
          if (context.mounted && result != null) {
            context.read<DecksBloc>().add(DecksCreate(name: result.name));
          }
        },
        child: const Icon(PhosphorIconsRegular.plus),
      ),
    );
  }
}
