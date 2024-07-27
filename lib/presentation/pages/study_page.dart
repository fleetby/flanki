import 'package:auto_route/auto_route.dart';
import 'package:flanki/get.dart';
import 'package:flanki/presentation/blocs/study/study_bloc.dart';
import 'package:flanki/presentation/widgets/study_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class StudyPage extends StatelessWidget {
  const StudyPage({
    required this.deckId,
    super.key,
  });

  final int deckId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => get<StudyBloc>()..add(StudyLoad(deckId: deckId)),
      child: const StudyBody(),
    );
  }
}
