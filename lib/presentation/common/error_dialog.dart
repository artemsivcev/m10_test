import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ErrorDialog extends StatelessWidget {
  const ErrorDialog({Key? key, this.onTap, this.desc}) : super(key: key);

  final Function? onTap;
  final String? desc;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(AppLocalizations.of(context)!.errorTitle),
      content: Text(desc ?? AppLocalizations.of(context)!.errorDesc),
      actions: [
        TextButton(
          onPressed: () {
            onTap != null ? onTap!() : null;
            Navigator.pop(context);
          },
          child: Text(AppLocalizations.of(context)!.ok),
        ),
      ],
    );
  }
}
