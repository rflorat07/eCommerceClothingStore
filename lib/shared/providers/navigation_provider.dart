import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'navigation_provider.g.dart';

/// Provider para gestionar la selección de la página a mostrar en la navegación
@riverpod
class NavigationState extends _$NavigationState {
  @override
  int build() {
    // Página inicial: índice 0
    return 0;
  }

  /// Cambia la página actual
  void setPage(int index) {
    state = index;
  }

  /// Obtiene la página actual
  int get currentPage => state;
}
