import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class FixedHorizontalListScreen extends StatelessWidget {
  const FixedHorizontalListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            // 1. La barra de búsqueda ahora se desplaza y desaparece (No está pinned).
            _buildSearchBarSliver(),

            // 2. La lista horizontal está ahora dentro de un SliverAppBar anclado (pinned).
            _buildPinnedHorizontalListSliver(),

            // 3. El Grid Desplazable
            _buildStaggeredGridSliver(),
          ],
        ),
      ),
    );
  }
}

// =========================================================
// 1. BARRA DE BÚSQUEDA (AHORA DESPLAZABLE/NO FIJA)
// =========================================================
Widget _buildSearchBarSliver() {
  return SliverToBoxAdapter(
    child: Container(
      color: Colors.white, // Mantenemos el fondo blanco para el look
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Center(
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Buscar...',
              prefixIcon: Icon(Icons.search),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            ),
          ),
        ),
      ),
    ),
  );
}

// =========================================================
// 2. LISTA HORIZONTAL (AHORA FIJA/PINNED)
// =========================================================
Widget _buildPinnedHorizontalListSliver() {
  return SliverAppBar(
    pinned: true, // ¡Clave! Esto ancla la parte inferior (bottom) del AppBar.
    floating: false,
    primary: false, // Evita el espacio del Status Bar si no lo necesitas
    toolbarHeight: 0, // No queremos que la parte de 'title' tenga altura
    automaticallyImplyLeading: false,

    // Aquí colocamos la lista horizontal.
    // Bar/bottom es la parte que se mantiene visible si 'pinned: true'.
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(
        100.0,
      ), // Altura de la lista horizontal
      child: Container(
        height: 100,
        color: Colors.white, // Color de fondo
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              width: 80,
              margin: const EdgeInsets.symmetric(horizontal: 6),
              decoration: BoxDecoration(
                color: Colors.pinkAccent.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.pinkAccent),
              ),
              child: Center(
                child: Text('Item $index', textAlign: TextAlign.center),
              ),
            );
          },
        ),
      ),
    ),
  );
}

// =========================================================
// 3. GRID DESPLAZABLE (Se mantiene igual)
// =========================================================
Widget _buildStaggeredGridSliver() {
  return SliverMasonryGrid.count(
    crossAxisCount: 2,
    mainAxisSpacing: 10,
    crossAxisSpacing: 10,
    itemBuilder: (context, index) {
      final height = (index % 3 == 0) ? 150.0 : 250.0;
      return Container(
        height: height,
        decoration: BoxDecoration(
          color: Colors.blueGrey[100],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(child: Text('Grid Item $index\nH: $height')),
      );
    },
    childCount: 40,
  );
}

// NOTA: Para que esto funcione, asegúrate de que el paquete 
// flutter_staggered_grid_view esté añadido a tu pubspec.yaml
// (flutter_staggered_grid_view: ^última_versión)