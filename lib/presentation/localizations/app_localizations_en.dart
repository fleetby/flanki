import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'Flanki';

  @override
  String get decksDestinationLabel => 'Decks';

  @override
  String get insightsDestinationLabel => 'Insights';

  @override
  String get settingsDestinationLabel => 'Settings';

  @override
  String get createDeckDialogTitle => 'Create new deck';

  @override
  String get createDeckDialogEditModeTitle => 'Edit deck';

  @override
  String get createDeckDialogNameFieldHint => 'Name';

  @override
  String get cancelAction => 'Cancel';

  @override
  String get createAction => 'Create';

  @override
  String get saveAction => 'Save';

  @override
  String get deleteAction => 'Delete';

  @override
  String get cannotBeBlankOrEmptyError => 'Cannot be blank or empty';

  @override
  String get deckCardsTabLabel => 'Cards';

  @override
  String get deckSettingsTabLabel => 'Settings';

  @override
  String get deckSettingsEditNameAction => 'Edit name';

  @override
  String get createCardDialogTitle => 'Create new card';

  @override
  String get createCardDialogEditModeTitle => 'Edit card';

  @override
  String get createCardDialogFrontTextFieldHint => 'Front text';

  @override
  String get createCardDialogBackTextFieldHint => 'Back text';

  @override
  String get couldNotLoadCardsError => 'Could not load cards';

  @override
  String get deckSettingsDeleteDeckAction => 'Delete deck';

  @override
  String get deleteDeckDialogTitle => 'Delete deck';

  @override
  String get deleteDeckDialogContent => 'Are you sure you want to delete this deck?';

  @override
  String get deckShouldContainAtLeastOneCardError => 'Deck should contain at least one card';

  @override
  String get rateAgain => 'Again';

  @override
  String get rateHard => 'Hard';

  @override
  String get rateGood => 'Good';

  @override
  String get showAnswerAction => 'Show answer';

  @override
  String get resetSchedulingAction => 'Reset scheduling';

  @override
  String get resetDeckSchedulingDialogTitle => 'Reset deck scheduling';

  @override
  String get resetDeckSchedulingDialogContent => 'Are you sure you want to reset scheduling for this deck?';

  @override
  String get resetAction => 'Reset';

  @override
  String get cardDetailsDialogTitle => 'Card details';

  @override
  String get cardDetailsIntervalLabel => 'Interval';

  @override
  String get cardDetailsRepetitionsLabel => 'Repetitions';

  @override
  String get cardDetailsEaseFactorLabel => 'Ease factor';

  @override
  String get cardDetailsRatedAtLabel => 'Rated at';

  @override
  String get cardDetailsNextRepetitionAtLabel => 'Next repetition at';

  @override
  String get allDecksOption => 'All decks';

  @override
  String get insightsReviewsSection => 'Reviews';

  @override
  String get systemTheme => 'System';

  @override
  String get lightTheme => 'Light';

  @override
  String get darkTheme => 'Dark';

  @override
  String get settingsLanguageLabel => 'Language';

  @override
  String get settingsThemeLabel => 'Theme';

  @override
  String get trainingModeTitle => 'Training mode';

  @override
  String get trainingModeSubtitle => 'Won\'t affect your progress';

  @override
  String get studyFinishedTitle => 'It\'s all for now!';

  @override
  String comeBackIn(Object duration) {
    return 'Come back in $duration';
  }

  @override
  String get comeBackLater => 'Come back later';

  @override
  String defaultLanguageLabel(String language) {
    return '$language (Default)';
  }

  @override
  String get unknownLabel => 'Unknown';

  @override
  String get deckSettingsShuffleCardsOption => 'Shuffle cards';

  @override
  String get noDataLabel => 'No data';

  @override
  String get cardStatusInitial => 'Initial';

  @override
  String get cardStatusLearning => 'Learning';

  @override
  String get cardStatusReview => 'Review';

  @override
  String get cardCountsLabel => 'Card Counts';

  @override
  String percentCompleted(int percent) {
    return '$percent% Completed';
  }

  @override
  String learnedOfTotalCards(int learned, int total) {
    return '$learned/$total Cards';
  }
}
