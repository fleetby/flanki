import 'package:auto_route/auto_route.dart';
import 'package:flanki/presentation/widgets/settings_body.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SettingsBody();
  }
}
