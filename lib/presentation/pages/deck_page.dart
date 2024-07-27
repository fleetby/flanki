import 'package:auto_route/auto_route.dart';
import 'package:flanki/get.dart';
import 'package:flanki/presentation/blocs/cards/cards_bloc.dart';
import 'package:flanki/presentation/blocs/deck/deck_bloc.dart';
import 'package:flanki/presentation/widgets/deck_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class DeckPage extends StatelessWidget {
  const DeckPage({
    required this.deckId,
    super.key,
  });

  final int deckId;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => get<DeckBloc>()..add(DeckLoad(id: deckId)),
        ),
        BlocProvider(
          create: (context) => get<CardsBloc>()..add(CardsLoad(deckId: deckId)),
        ),
      ],
      child: const DeckBody(),
    );
  }
}
