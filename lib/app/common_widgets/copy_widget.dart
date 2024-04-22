import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/custom_sized_box.dart';

class CopyWidget extends StatefulWidget {
  const CopyWidget({
    super.key,
    required this.text,
    required this.icon,
  });

  final String text;
  final IconData icon;

  @override
  State<CopyWidget> createState() => _CopyWidgetState();
}

class _CopyWidgetState extends State<CopyWidget> {
  bool copied = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(widget.icon),
        SBW5(),
        SelectableText(widget.text),
        InkWell(
          onTap: () async {
            await Clipboard.setData(ClipboardData(text: widget.text));
            setState(() {
              copied = true;
            });
          },
          child: Icon(
            copied ? Icons.check_circle_outline_rounded : Icons.copy_all,
            size: 18,
            color: copied ? Colors.green : Colors.black54,
          ),
        ),
      ],
    );
  }
}
