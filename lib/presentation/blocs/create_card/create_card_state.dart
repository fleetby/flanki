part of 'create_card_bloc.dart';

enum CreateCardSaveStatus {
  initial,
  loading,
  success,
  error,
}

enum CreateCardLoadStatus {
  initial,
  loading,
  success,
  error,
}

@freezed
class CreateCardState with _$CreateCardState {
  const factory CreateCardState({
    CardModel? card,
    @Default(CreateCardSaveStatus.initial)
    CreateCardSaveStatus saveStatus,
    @Default(CreateCardLoadStatus.initial)
    CreateCardLoadStatus loadStatus,
  }) = _CreateCardState;
}
