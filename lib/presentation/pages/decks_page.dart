import 'package:auto_route/annotations.dart';
import 'package:flanki/get.dart';
import 'package:flanki/presentation/blocs/decks/decks_bloc.dart';
import 'package:flanki/presentation/widgets/decks_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class DecksPage extends StatelessWidget {
  const DecksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => get<DecksBloc>()..add(const DecksLoad()),
      child: const DecksBody(),
    );
  }
}
