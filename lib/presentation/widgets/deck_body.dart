import 'package:auto_route/auto_route.dart';
import 'package:flanki/presentation/app_router.gr.dart';
import 'package:flanki/presentation/blocs/cards/cards_bloc.dart';
import 'package:flanki/presentation/blocs/deck/deck_bloc.dart';
import 'package:flanki/presentation/localizations/app_localizations.dart';
import 'package:flanki/presentation/widgets/create_card_dialog.dart';
import 'package:flanki/presentation/widgets/deck_cards_fragment.dart';
import 'package:flanki/presentation/widgets/deck_settings_fragment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:skeletonizer/skeletonizer.dart';

class DeckBody extends StatefulWidget {
  const DeckBody({
    super.key,
  });

  @override
  State<DeckBody> createState() => _DeckBodyState();
}

class _DeckBodyState extends State<DeckBody>
    with SingleTickerProviderStateMixin {
  final _scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();
  late final TabController _tabController;
  var _showFab = true;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      setState(() {
        _showFab = _tabController.index == 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final tr = AppLocalizations.of(context);
    return BlocListener<DeckBloc, DeckState>(
      listener: (context, state) {
        if (state is DeckDeleted) {
          context.maybePop();
        }
      },
      child: ScaffoldMessenger(
        key: _scaffoldMessengerKey,
        child: Scaffold(
          appBar: AppBar(
            title: BlocSelector<DeckBloc, DeckState, String?>(
              selector: (state) =>
                  state.mapOrNull(loaded: (state) => state.deck.name),
              builder: (context, name) => Skeletonizer(
                enabled: name == null,
                child: Text(
                  name ?? 'Placeholder',
                ),
              ),
            ),
            actions: [
              IconButton(
                constraints: BoxConstraints.tight(const Size.square(56)),
                onPressed: () {
                  final isDeckEmpty =
                      (context.read<CardsBloc>().state as CardsLoaded?)
                              ?.cards
                              .isEmpty ??
                          true;
                  if (isDeckEmpty) {
                    _scaffoldMessengerKey.currentState!
                      ..removeCurrentSnackBar()
                      ..showSnackBar(
                        SnackBar(
                          content:
                              Text(tr.deckShouldContainAtLeastOneCardError),
                        ),
                      );
                  } else {
                    final deckId =
                        (context.read<DeckBloc>().state as DeckLoaded?)
                            ?.deck
                            .id;
                    if (deckId != null) {
                      StudyRoute(deckId: deckId).push<void>(context);
                    }
                  }
                },
                icon: const Icon(PhosphorIconsRegular.play),
              ),
            ],
            bottom: TabBar(
              controller: _tabController,
              tabs: [
                Tab(child: Text(tr.deckCardsTabLabel)),
                Tab(child: Text(tr.deckSettingsTabLabel)),
              ],
            ),
          ),
          body: TabBarView(
            controller: _tabController,
            children: const [
              DeckCardsFragment(),
              DeckSettingsFragment(),
            ],
          ),
          floatingActionButton: _showFab
              ? FloatingActionButton(
                  onPressed: () async {
                    final result = await showCreateCardDialog(context);
                    if (context.mounted && result != null) {
                      context.read<CardsBloc>().add(
                            CardsCreate(
                              frontText: result.frontText,
                              backText: result.backText,
                            ),
                          );
                    }
                  },
                  child: const Icon(PhosphorIconsRegular.plus),
                )
              : null,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
