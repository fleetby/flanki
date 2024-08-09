import 'package:auto_route/auto_route.dart';
import 'package:flanki/get.dart';
import 'package:flanki/presentation/blocs/create_card/create_card_bloc.dart';
import 'package:flanki/presentation/widgets/create_card_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class CreateCardPage extends StatelessWidget {
  const CreateCardPage({
    required this.deckId,
    this.cardId,
    super.key,
  });

  final int? deckId;
  final int? cardId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final bloc = get<CreateCardBloc>();
        if (cardId != null) {
          bloc.add(CreateCardEvent.load(cardId: cardId!));
        }
        return bloc;
      },
      child: CreateCardBody(
        deckId: deckId,
        editMode: cardId != null,
      ),
    );
  }
}
