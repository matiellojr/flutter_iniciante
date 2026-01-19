
import 'package:flutter/material.dart';

class MeuStatefulWidget extends StatefulWidget {
  final void Function() callback;

  const MeuStatefulWidget({
    super.key,
    required this.callback,
  });

  @override
  State<MeuStatefulWidget> createState() => _MeuStateFulWidgetState();
}

class _MeuStateFulWidgetState extends State<MeuStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            widget.callback();
          }, 
          child: Text(
            "Botão de baixo"
          ),
        ),
      ],
    );
  }
}
