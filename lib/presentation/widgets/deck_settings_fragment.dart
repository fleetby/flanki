import 'package:flanki/presentation/blocs/deck/deck_bloc.dart';
import 'package:flanki/presentation/localizations/app_localizations.dart';
import 'package:flanki/presentation/widgets/create_deck_dialog.dart';
import 'package:flanki/presentation/widgets/delete_deck_dialog.dart';
import 'package:flanki/presentation/widgets/reset_deck_scheduling_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:skeletonizer/skeletonizer.dart';

class DeckSettingsFragment extends StatelessWidget {
  const DeckSettingsFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeckBloc, DeckState>(
      builder: (context, state) => ListView(
        children: const [
          _ShuffleCardsOption(),
          _EditDeckNameOption(),
          _ResetDeckSchedulingOption(),
          _DeleteDeckOption(),
        ],
      ),
    );
  }
}

class _DeleteDeckOption extends StatelessWidget {
  const _DeleteDeckOption();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final tr = AppLocalizations.of(context);
    return ListTile(
      onTap: () async {
        final delete = await showDeleteDeckDialog(context);
        if (context.mounted && delete) {
          context.read<DeckBloc>().add(const DeckDelete());
        }
      },
      leading: Icon(
        PhosphorIconsRegular.trash,
        color: theme.colorScheme.error,
      ),
      title: Text(
        tr.deckSettingsDeleteDeckAction,
        style: TextStyle(color: theme.colorScheme.error),
      ),
    );
  }
}

class _ResetDeckSchedulingOption extends StatelessWidget {
  const _ResetDeckSchedulingOption();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final tr = AppLocalizations.of(context);
    return ListTile(
      onTap: () async {
        final reset = await showResetDeckSchedulingDialog(context);

        if (context.mounted && reset) {
          context.read<DeckBloc>().add(const DeckResetScheduling());
        }
      },
      leading: Icon(
        PhosphorIconsRegular.arrowClockwise,
        color: theme.colorScheme.error,
      ),
      title: Text(
        tr.resetSchedulingAction,
        style: TextStyle(color: theme.colorScheme.error),
      ),
    );
  }
}

class _EditDeckNameOption extends StatelessWidget {
  const _EditDeckNameOption();

  @override
  Widget build(BuildContext context) {
    final tr = AppLocalizations.of(context);
    return ListTile(
      leading: const Icon(PhosphorIconsRegular.pencil),
      title: Text(tr.deckSettingsEditNameAction),
      onTap: () async {
        final state = context.read<DeckBloc>().state;
        if (state case DeckLoaded(:final deck)) {
          final result = await showCreateDeckDialog(
            context,
            initialData: CreateDeckDialogInitialData(name: deck.name),
            edit: true,
          );

          if (context.mounted && result != null) {
            context.read<DeckBloc>().add(DeckEdit(name: result.name));
          }
        }
      },
    );
  }
}

class _ShuffleCardsOption extends StatelessWidget {
  const _ShuffleCardsOption();

  @override
  Widget build(BuildContext context) {
    final tr = AppLocalizations.of(context);
    return ListTile(
      onTap: () => _toggleShuffleCards(context),
      leading: const Icon(PhosphorIconsRegular.shuffle),
      title: Text(tr.deckSettingsShuffleCardsOption),
      trailing: BlocSelector<DeckBloc, DeckState, bool?>(
        selector: (state) => state.mapOrNull(
          loaded: (state) => state.deck.settings.shuffleCards,
        ),
        builder: (context, shuffleCards) => Skeletonizer(
          enabled: shuffleCards == null,
          child: Switch(
            value: shuffleCards ?? true,
            onChanged: (_) => _toggleShuffleCards(context),
          ),
        ),
      ),
    );
  }

  void _toggleShuffleCards(BuildContext context) {
    final shuffleCards = context
        .read<DeckBloc>()
        .state
        .mapOrNull(loaded: (state) => state.deck.settings.shuffleCards);

    if (shuffleCards == null) {
      return;
    }

    context
        .read<DeckBloc>()
        .add(DeckSetShuffleCards(shuffleCards: !shuffleCards));
  }
}
