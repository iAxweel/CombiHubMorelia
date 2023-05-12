import 'package:admin_dashboard/ui/buttons/link_text.dart';
import 'package:flutter/material.dart';

class LinksBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
        color: Colors.black,
        height: (size.width > 1000) ? size.height * 0.07 : null,
        child: Wrap(
          alignment: WrapAlignment.center,
          children: [
            LinkText(text: 'Acerca de', onPressed: () => print('acerca de')),
            LinkText(text: 'Centro de ayuda'),
            LinkText(text: 'Términos de servicio'),
            LinkText(text: 'Políticas de privacidad'),
            LinkText(text: 'Políticas de cookies'),
          ],
        ));
  }
}
