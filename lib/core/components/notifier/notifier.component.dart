import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class NotifierWidget<T extends ChangeNotifier> extends StatefulWidget {
  const NotifierWidget({
    super.key,
    required this.builder,
    required this.model,
    this.child,
  });

  final T model;

  final Widget? child;

  final Widget Function(BuildContext context, T model, Widget? child) builder;

  @override
  // ignore: library_private_types_in_public_api
  _NotifierWidgetState<T> createState() => _NotifierWidgetState<T>();
}

class _NotifierWidgetState<T extends ChangeNotifier>
    extends State<NotifierWidget<T>> {
  late T model;

  @override
  void initState() {
    model = widget.model;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<T>(
      create: (context) => model,
      child: Consumer<T>(
        builder: widget.builder,
        child: widget.child,
      ),
    );
  }
}
