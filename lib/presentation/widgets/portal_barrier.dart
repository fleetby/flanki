import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';

class PortalBarrier extends StatelessWidget {
  const PortalBarrier({
    required this.visible,
    required this.child,
    required this.onDismiss,
    super.key,
  });

  final bool visible;
  final Widget child;
  final VoidCallback onDismiss;

  @override
  Widget build(BuildContext context) {
    return PortalTarget(
      visible: visible,
      portalFollower: TweenAnimationBuilder<double>(
        duration: kThemeAnimationDuration,
        tween: Tween(
          begin: visible ? 0 : 1,
          end: visible ? 1 : 0,
        ),
        builder: (context, value, child) => Opacity(
          opacity: value,
          child: child,
        ),
        child: ModalBarrier(
          color: Colors.black54,
          onDismiss: onDismiss,
        ),
      ),
      child: child,
    );
  }
}
