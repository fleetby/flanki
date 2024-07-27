import 'package:flanki/presentation/app_router.gr.dart';
import 'package:flanki/presentation/blocs/decks/decks_bloc.dart';
import 'package:flanki/presentation/localizations/app_localizations.dart';
import 'package:flanki/presentation/widgets/create_deck_dialog.dart';
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
        builder: (context, state) => ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: state.decks.length,
          itemBuilder: (context, index) {
            final deck = state.decks[index];
            return Card.outlined(
              clipBehavior: Clip.antiAlias,
              child: ListTile(
                title: Text(
                  deck.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                onTap: () => DeckRoute(deckId: deck.id).push<void>(context),
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
