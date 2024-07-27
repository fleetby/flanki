import 'package:auto_route/auto_route.dart';
import 'package:flanki/get.dart';
import 'package:flanki/presentation/blocs/insights/insights_bloc.dart';
import 'package:flanki/presentation/blocs/statistics/statistics_bloc.dart';
import 'package:flanki/presentation/widgets/insights_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class InsightsPage extends StatelessWidget {
  const InsightsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => get<InsightsBloc>()..add(const InsightsLoad()),
        ),
        BlocProvider(
          create: (context) =>
              get<StatisticsBloc>()..add(const StatisticsLoad()),
        ),
      ],
      child: const InsightsBody(),
    );
  }
}
