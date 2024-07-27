import 'package:flanki/domain/models/card_rates_summary_model.dart';
import 'package:flanki/domain/models/card_status_count_model.dart';
import 'package:flanki/domain/models/deck_model.dart';
import 'package:flanki/presentation/blocs/insights/insights_bloc.dart';
import 'package:flanki/presentation/blocs/statistics/statistics_bloc.dart';
import 'package:flanki/presentation/localizations/app_localizations.dart';
import 'package:flanki/presentation/widgets/card_counts_statistics_card.dart';
import 'package:flanki/presentation/widgets/portal_barrier.dart';
import 'package:flanki/presentation/widgets/reviews_statistics_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class InsightsBody extends StatefulWidget {
  const InsightsBody({super.key});

  @override
  State<InsightsBody> createState() => _InsightsBodyState();
}

class _InsightsBodyState extends State<InsightsBody> {
  var _deckSelectorPopupVisible = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final tr = AppLocalizations.of(context);
    return Portal(
      child: BlocListener<InsightsBloc, InsightsState>(
        listenWhen: (previous, current) =>
            previous.mapOrNull(
              loaded: (previous) => previous.selectedDeck?.id,
            ) !=
            current.mapOrNull(loaded: (current) => current.selectedDeck?.id),
        listener: (context, state) {
          context.read<StatisticsBloc>().add(
                StatisticsLoad(
                  deckId: state.mapOrNull(
                    loaded: (state) => state.selectedDeck?.id,
                  ),
                ),
              );
        },
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: PortalBarrier(
              visible: _deckSelectorPopupVisible,
              onDismiss: () {
                setState(() {
                  _deckSelectorPopupVisible = false;
                });
              },
              child: _PortalDeckSelector(
                visible: _deckSelectorPopupVisible,
                onSelectAndDismiss: _selectDeckAndDismiss,
                child: Material(
                  clipBehavior: Clip.antiAlias,
                  shape: const StadiumBorder(),
                  type: MaterialType.transparency,
                  child: InkWell(
                    onTap: () => setState(() {
                      _deckSelectorPopupVisible = !_deckSelectorPopupVisible;
                    }),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          BlocSelector<InsightsBloc, InsightsState, DeckModel?>(
                            selector: (state) => state.mapOrNull(
                              loaded: (state) => state.selectedDeck,
                            ),
                            builder: (context, deck) => Flexible(
                              child: Text(
                                deck?.name ?? tr.allDecksOption,
                                style: theme.textTheme.titleLarge,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          const SizedBox(width: 4),
                          const Icon(PhosphorIconsRegular.caretDown),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          body: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            children: [
              BlocSelector<StatisticsBloc, StatisticsState,
                  CardRatesSummaryModel?>(
                selector: (state) =>
                    state.mapOrNull(loaded: (state) => state.cardRatesSummary),
                builder: (context, cardRatesSummary) =>
                    ReviewsStatisticsCard(cardRatesSummary: cardRatesSummary),
              ),
              BlocSelector<StatisticsBloc, StatisticsState,
                  CardStatusCountModel?>(
                selector: (state) =>
                    state.mapOrNull(loaded: (state) => state.cardStatusCount),
                builder: (context, cardStatusCount) =>
                    CardCountsStatisticsCard(cardStatusCount: cardStatusCount),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _selectDeckAndDismiss(DeckModel? deck) {
    context.read<InsightsBloc>().add(InsightsSetSelectedDeck(deck: deck));
    setState(() {
      _deckSelectorPopupVisible = false;
    });
  }
}

class _PortalDeckSelector extends StatelessWidget {
  const _PortalDeckSelector({
    required this.visible,
    required this.onSelectAndDismiss,
    required this.child,
  });

  final bool visible;
  final void Function(DeckModel? deck) onSelectAndDismiss;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final tr = AppLocalizations.of(context);
    return PortalTarget(
      visible: visible,
      anchor: const Aligned(
        follower: Alignment.topCenter,
        target: Alignment.topCenter,
        widthFactor: 2,
      ),
      portalFollower: Card(
        clipBehavior: Clip.antiAlias,
        child: BlocSelector<InsightsBloc, InsightsState, List<DeckModel>>(
          selector: (state) =>
              state.mapOrNull(loaded: (state) => state.decks) ?? [],
          builder: (context, decks) => ListView.builder(
            shrinkWrap: true,
            itemCount: decks.length + 1,
            itemBuilder: (context, index) {
              if (index == 0) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      title: Text(tr.allDecksOption),
                      onTap: () => onSelectAndDismiss(null),
                    ),
                    const Divider(height: 0),
                  ],
                );
              }
              index--;
              final deck = decks[index];
              return ListTile(
                title: Text(
                  deck.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                onTap: () => onSelectAndDismiss(deck),
              );
            },
          ),
        ),
      ),
      child: child,
    );
  }
}
