class Sm2 {
  Sm2({
    this.interval = 0,
    this.repetitions = 0,
    this.easeFactor = 2.5,
  });

  int interval;
  int repetitions;
  double easeFactor;

  void update(int quality) {
    final oldInterval = interval;
    final oldEaseFactor = easeFactor;

    if (quality >= 3) {
      switch (repetitions) {
        case 0:
          interval = 1;
        case 1:
          interval = 6;
        default:
          interval = (oldInterval * oldEaseFactor).round();
      }

      repetitions++;
      easeFactor =
          oldEaseFactor + (0.1 - (5 - quality) * (0.08 + (5 - quality) * 0.02));
    } else {
      repetitions = 0;
      interval = 1;
      easeFactor = oldEaseFactor;
    }

    if (easeFactor < 1.3) {
      easeFactor = 1.3;
    }
  }
}
