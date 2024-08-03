import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'localizations/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en')
  ];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'Flanki'**
  String get appName;

  /// No description provided for @decksDestinationLabel.
  ///
  /// In en, this message translates to:
  /// **'Decks'**
  String get decksDestinationLabel;

  /// No description provided for @insightsDestinationLabel.
  ///
  /// In en, this message translates to:
  /// **'Insights'**
  String get insightsDestinationLabel;

  /// No description provided for @settingsDestinationLabel.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsDestinationLabel;

  /// No description provided for @createDeckDialogTitle.
  ///
  /// In en, this message translates to:
  /// **'Create new deck'**
  String get createDeckDialogTitle;

  /// No description provided for @createDeckDialogEditModeTitle.
  ///
  /// In en, this message translates to:
  /// **'Edit deck'**
  String get createDeckDialogEditModeTitle;

  /// No description provided for @createDeckDialogNameFieldHint.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get createDeckDialogNameFieldHint;

  /// No description provided for @cancelAction.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancelAction;

  /// No description provided for @createAction.
  ///
  /// In en, this message translates to:
  /// **'Create'**
  String get createAction;

  /// No description provided for @saveAction.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get saveAction;

  /// No description provided for @deleteAction.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get deleteAction;

  /// No description provided for @cannotBeBlankOrEmptyError.
  ///
  /// In en, this message translates to:
  /// **'Cannot be blank or empty'**
  String get cannotBeBlankOrEmptyError;

  /// No description provided for @deckCardsTabLabel.
  ///
  /// In en, this message translates to:
  /// **'Cards'**
  String get deckCardsTabLabel;

  /// No description provided for @deckSettingsTabLabel.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get deckSettingsTabLabel;

  /// No description provided for @deckSettingsRenameAction.
  ///
  /// In en, this message translates to:
  /// **'Rename deck'**
  String get deckSettingsRenameAction;

  /// No description provided for @createCardDialogTitle.
  ///
  /// In en, this message translates to:
  /// **'Create new card'**
  String get createCardDialogTitle;

  /// No description provided for @createCardDialogEditModeTitle.
  ///
  /// In en, this message translates to:
  /// **'Edit card'**
  String get createCardDialogEditModeTitle;

  /// No description provided for @createCardDialogFrontTextFieldHint.
  ///
  /// In en, this message translates to:
  /// **'Front text'**
  String get createCardDialogFrontTextFieldHint;

  /// No description provided for @createCardDialogBackTextFieldHint.
  ///
  /// In en, this message translates to:
  /// **'Back text'**
  String get createCardDialogBackTextFieldHint;

  /// No description provided for @couldNotLoadCardsError.
  ///
  /// In en, this message translates to:
  /// **'Could not load cards'**
  String get couldNotLoadCardsError;

  /// No description provided for @deckSettingsDeleteDeckAction.
  ///
  /// In en, this message translates to:
  /// **'Delete deck'**
  String get deckSettingsDeleteDeckAction;

  /// No description provided for @deleteDeckDialogTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete deck'**
  String get deleteDeckDialogTitle;

  /// No description provided for @deleteDeckDialogContent.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this deck?'**
  String get deleteDeckDialogContent;

  /// No description provided for @deckShouldContainAtLeastOneCardError.
  ///
  /// In en, this message translates to:
  /// **'Deck should contain at least one card'**
  String get deckShouldContainAtLeastOneCardError;

  /// No description provided for @rateAgain.
  ///
  /// In en, this message translates to:
  /// **'Again'**
  String get rateAgain;

  /// No description provided for @rateHard.
  ///
  /// In en, this message translates to:
  /// **'Hard'**
  String get rateHard;

  /// No description provided for @rateGood.
  ///
  /// In en, this message translates to:
  /// **'Good'**
  String get rateGood;

  /// No description provided for @showAnswerAction.
  ///
  /// In en, this message translates to:
  /// **'Show answer'**
  String get showAnswerAction;

  /// No description provided for @resetSchedulingAction.
  ///
  /// In en, this message translates to:
  /// **'Reset scheduling'**
  String get resetSchedulingAction;

  /// No description provided for @resetDeckSchedulingDialogTitle.
  ///
  /// In en, this message translates to:
  /// **'Reset deck scheduling'**
  String get resetDeckSchedulingDialogTitle;

  /// No description provided for @resetDeckSchedulingDialogContent.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to reset scheduling for this deck?'**
  String get resetDeckSchedulingDialogContent;

  /// No description provided for @resetAction.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get resetAction;

  /// No description provided for @cardDetailsDialogTitle.
  ///
  /// In en, this message translates to:
  /// **'Card details'**
  String get cardDetailsDialogTitle;

  /// No description provided for @cardDetailsIntervalLabel.
  ///
  /// In en, this message translates to:
  /// **'Interval'**
  String get cardDetailsIntervalLabel;

  /// No description provided for @cardDetailsRepetitionsLabel.
  ///
  /// In en, this message translates to:
  /// **'Repetitions'**
  String get cardDetailsRepetitionsLabel;

  /// No description provided for @cardDetailsEaseFactorLabel.
  ///
  /// In en, this message translates to:
  /// **'Ease factor'**
  String get cardDetailsEaseFactorLabel;

  /// No description provided for @cardDetailsRatedAtLabel.
  ///
  /// In en, this message translates to:
  /// **'Rated at'**
  String get cardDetailsRatedAtLabel;

  /// No description provided for @cardDetailsNextRepetitionAtLabel.
  ///
  /// In en, this message translates to:
  /// **'Next repetition at'**
  String get cardDetailsNextRepetitionAtLabel;

  /// No description provided for @allDecksOption.
  ///
  /// In en, this message translates to:
  /// **'All decks'**
  String get allDecksOption;

  /// No description provided for @insightsReviewsSection.
  ///
  /// In en, this message translates to:
  /// **'Reviews'**
  String get insightsReviewsSection;

  /// No description provided for @systemTheme.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get systemTheme;

  /// No description provided for @lightTheme.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get lightTheme;

  /// No description provided for @darkTheme.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get darkTheme;

  /// No description provided for @settingsLanguageLabel.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get settingsLanguageLabel;

  /// No description provided for @settingsThemeLabel.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get settingsThemeLabel;

  /// No description provided for @trainingModeTitle.
  ///
  /// In en, this message translates to:
  /// **'Training mode'**
  String get trainingModeTitle;

  /// No description provided for @trainingModeSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Won\'t affect your progress'**
  String get trainingModeSubtitle;

  /// No description provided for @studyFinishedTitle.
  ///
  /// In en, this message translates to:
  /// **'It\'s all for now!'**
  String get studyFinishedTitle;

  /// No description provided for @comeBackIn.
  ///
  /// In en, this message translates to:
  /// **'Come back in {duration}'**
  String comeBackIn(Object duration);

  /// No description provided for @comeBackLater.
  ///
  /// In en, this message translates to:
  /// **'Come back later'**
  String get comeBackLater;

  /// No description provided for @defaultLanguageLabel.
  ///
  /// In en, this message translates to:
  /// **'{language} (Default)'**
  String defaultLanguageLabel(String language);

  /// No description provided for @unknownLabel.
  ///
  /// In en, this message translates to:
  /// **'Unknown'**
  String get unknownLabel;

  /// No description provided for @deckSettingsShuffleCardsOption.
  ///
  /// In en, this message translates to:
  /// **'Shuffle cards'**
  String get deckSettingsShuffleCardsOption;

  /// No description provided for @noDataLabel.
  ///
  /// In en, this message translates to:
  /// **'No data'**
  String get noDataLabel;

  /// No description provided for @cardStatusInitial.
  ///
  /// In en, this message translates to:
  /// **'Initial'**
  String get cardStatusInitial;

  /// No description provided for @cardStatusLearning.
  ///
  /// In en, this message translates to:
  /// **'Learning'**
  String get cardStatusLearning;

  /// No description provided for @cardStatusReview.
  ///
  /// In en, this message translates to:
  /// **'Review'**
  String get cardStatusReview;

  /// No description provided for @cardCountsLabel.
  ///
  /// In en, this message translates to:
  /// **'Card Counts'**
  String get cardCountsLabel;

  /// No description provided for @percentCompleted.
  ///
  /// In en, this message translates to:
  /// **'{percent}% Completed'**
  String percentCompleted(int percent);

  /// No description provided for @learnedOfTotalCards.
  ///
  /// In en, this message translates to:
  /// **'{learned}/{total} Cards'**
  String learnedOfTotalCards(int learned, int total);
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
