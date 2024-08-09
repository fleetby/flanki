import 'package:flanki/domain/constants/card_rate.dart';
import 'package:flanki/presentation/app_router.gr.dart';
import 'package:flanki/presentation/blocs/study/study_bloc.dart';
import 'package:flanki/presentation/extensions/card_rate_x.dart';
import 'package:flanki/presentation/extensions/theme_data_x.dart';
import 'package:flanki/presentation/localizations/app_localizations.dart';
import 'package:flanki/presentation/widgets/read_only_rich_content.dart';
import 'package:flanki/presentation/widgets/statistics_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:timeago/timeago.dart' as timeago;

const _frontKey = Key('front');
const _backKey = Key('back');

class StudyBody extends StatelessWidget {
  const StudyBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StudyBloc, StudyState>(
      builder: (context, state) => Material(
        child: AnimatedSwitcher(
          duration: kThemeAnimationDuration,
          transitionBuilder: (child, animation) => FadeTransition(
            opacity: animation,
            child: child,
          ),
          child: switch (state) {
            final StudyOngoing state => Scaffold(
                appBar: AppBar(
                  title: Text(
                    '${state.currentCardIndex + 1}/${state.cards.length}',
                  ),
                  bottom: PreferredSize(
                    preferredSize: const Size.fromHeight(4),
                    child: LinearProgressIndicator(
                      value: state.currentCardIndex / state.cards.length,
                    ),
                  ),
                  actions: [
                    if (state.currentCardIndex >= 1)
                      IconButton(
                        key: UniqueKey(),
                        constraints:
                            BoxConstraints.tight(const Size.square(56)),
                        onPressed: () => context
                            .read<StudyBloc>()
                            .add(const StudyRestorePreviousCard()),
                        icon: const Icon(PhosphorIconsRegular.arrowArcLeft),
                      ),
                    IconButton(
                      constraints: BoxConstraints.tight(const Size.square(56)),
                      onPressed: () => CreateCardRoute(
                        deckId: null,
                        cardId: state.currentCard!.id,
                      ).push<void>(context),
                      icon: const Icon(PhosphorIconsRegular.pencil),
                    ),
                  ],
                ),
                body: Center(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(16),
                    child: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 50),
                      child: Column(
                        key: ValueKey(state.showAnswer),
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Text(
                          //   state.currentCard!.frontNote.text,
                          //   style: theme.textTheme.bodyLarge,
                          //   textAlign: TextAlign.center,
                          // ),
                          ReadOnlyRichContent(
                            key: _frontKey,
                            state.currentCard!.frontNote.text,
                          ),
                          if (state.showAnswer) ...[
                            const Divider(height: 24),
                            // Text(
                            //   state.currentCard!.backNote.text,
                            //   style: theme.textTheme.bodyLarge,
                            //   textAlign: TextAlign.center,
                            // ),
                            ReadOnlyRichContent(
                              key: _backKey,
                              state.currentCard!.backNote.text,
                            ),
                          ],
                        ],
                      ),
                    ),
                  ),
                ),
                bottomNavigationBar: _RateBar(
                  show: state.showAnswer,
                  onShowPressed: () =>
                      context.read<StudyBloc>().add(const StudyShowAnswer()),
                  onRate: (rate) =>
                      context.read<StudyBloc>().add(StudyRateCard(rate: rate)),
                ),
              ),
            final StudyFinished state => _StudyResults(state: state),
            StudyInitial() || StudyLoading() => Scaffold(appBar: AppBar()),
            _ => const Placeholder(),
          },
        ),
      ),
    );
  }
}

class _StudyResults extends StatelessWidget {
  const _StudyResults({required this.state});
  final StudyFinished state;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final tr = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                color: theme.colorScheme.primary,
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(16),
              child: Icon(
                PhosphorIconsRegular.check,
                color: theme.colorScheme.onPrimary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              tr.studyFinishedTitle,
              style: theme.textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            // Text(
            //   tr.studyFinishedSubtitle,
            //   style: theme.textTheme.bodyLarge,
            //   textAlign: TextAlign.center,
            // ),
            Text(
              state.nextRepetitionDate != null
                  ? tr.comeBackIn(
                      timeago.format(
                        state.nextRepetitionDate!,
                        allowFromNow: true,
                      ),
                    )
                  : tr.comeBackLater,
              style: theme.textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Card.outlined(
              clipBehavior: Clip.antiAlias,
              child: ListView.separated(
                shrinkWrap: true,
                separatorBuilder: (context, index) => const Divider(height: 0),
                itemCount: CardRate.values.length,
                itemBuilder: (context, index) {
                  final rate = CardRate.values[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    child: StatisticsIndicator(
                      color: rate.getColor(context),
                      title: rate.getLocalizedName(context),
                      value: (state.rates[rate] ?? 0).toString(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Divider(),
          Card.outlined(
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            clipBehavior: Clip.antiAlias,
            child: ListTile(
              leading: const Icon(PhosphorIconsRegular.graduationCap),
              onTap: () => context.read<StudyBloc>().add(
                    StudyLoad(
                      deckId: state.deckId,
                      trainingMode: true,
                    ),
                  ),
              title: Text(tr.trainingModeTitle),
              subtitle: Text(tr.trainingModeSubtitle),
              trailing: const Icon(PhosphorIconsRegular.caretRight),
            ),
          ),
          const SizedBox(height: 4),
        ],
      ),
    );
  }
}

class _RateBar extends StatelessWidget {
  const _RateBar({
    required this.show,
    required this.onShowPressed,
    required this.onRate,
  });

  final bool show;
  final VoidCallback onShowPressed;
  final void Function(CardRate rate) onRate;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final tr = AppLocalizations.of(context);
    return Container(
      height: 56,
      color: theme.colorScheme.surfaceContainer,
      padding: const EdgeInsets.all(8),
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 150),
        transitionBuilder: (child, animation) {
          return SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0, 1),
              end: Offset.zero,
            ).animate(
              CurvedAnimation(
                parent: animation,
                curve: Curves.easeOut,
              ),
            ),
            child: child,
          );
        },
        child: Row(
          key: ValueKey(show),
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (show) ...[
              Expanded(
                child: FilledButton(
                  style: ButtonStyle(
                    foregroundColor: WidgetStatePropertyAll(
                      theme.onAgainRateContainer,
                    ),
                    backgroundColor: WidgetStatePropertyAll(
                      theme.againRateContainer,
                    ),
                  ),
                  onPressed: () => onRate(CardRate.again),
                  child: Text(tr.rateAgain),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: FilledButton(
                  style: ButtonStyle(
                    foregroundColor: WidgetStatePropertyAll(
                      theme.onHardRateContainer,
                    ),
                    backgroundColor: WidgetStatePropertyAll(
                      theme.hardRateContainer,
                    ),
                  ),
                  onPressed: () => onRate(CardRate.hard),
                  child: Text(tr.rateHard),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: FilledButton(
                  style: ButtonStyle(
                    foregroundColor: WidgetStatePropertyAll(
                      theme.onGoodRateContainer,
                    ),
                    backgroundColor: WidgetStatePropertyAll(
                      theme.goodRateContainer,
                    ),
                  ),
                  onPressed: () => onRate(CardRate.good),
                  child: Text(tr.rateGood),
                ),
              ),
            ] else ...[
              Expanded(
                child: FilledButton(
                  style: ButtonStyle(
                    foregroundColor: WidgetStatePropertyAll(
                      theme.colorScheme.onSecondaryContainer,
                    ),
                    backgroundColor: WidgetStatePropertyAll(
                      theme.colorScheme.secondaryContainer,
                    ),
                  ),
                  onPressed: onShowPressed,
                  child: Text(tr.showAnswerAction),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
