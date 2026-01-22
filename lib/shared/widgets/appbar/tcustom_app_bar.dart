import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../../../shared/widgets/widgets.dart'; // Ajusta la ruta si es necesario

class TCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TCustomAppBar({
    super.key,
    required this.title,
    this.showBackButton = false,
    this.showMenuIcon = false,
  });

  final String title;
  final bool showBackButton;
  final bool showMenuIcon;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
        child: Row(
          children: [
            // Botón de retroceso (si está habilitado)
            if (showBackButton)
              CircularIcon(
                width: 40.0,
                height: 40.0,
                size: 24.0,
                showBorder: true,
                borderColor: colorScheme.outline,
                iconColor: colorScheme.primary,
                icon: IconsaxPlusLinear.arrow_left_1,
                onPressed: () {
                  context.canPop()
                      ? context.pop()
                      : Navigator.of(context).maybePop();
                },
              ),
            // Título centrado (siempre en el medio)
            Expanded(
              child: Center(
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ),
            // Ícono de menú (si está habilitado)
            if (showMenuIcon)
              CircularIcon(
                width: 40.0,
                height: 40.0,
                size: 24.0,
                showBorder: true,
                borderColor: colorScheme.outline,
                iconColor: colorScheme.primary,
                icon: IconsaxPlusLinear.menu,
                onPressed: () {
                  // Acción al presionar el ícono de menú (ej. abrir drawer)
                  //Scaffold.of(context).openDrawer(); // Ejemplo: abre el drawer
                },
              ),

            if (!showMenuIcon)
              const SizedBox(width: 40.0), // Espacio vacío si no hay ícono
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(72.0);
}
