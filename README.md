# prototype_viewer

# Prototype Viewer

Una aplicación Flutter moderna para visualizar y gestionar prototipos de diseño, construida con **Clean Architecture** y **Feature-First** approach usando **Riverpod** para la gestión de estado.

## 🏗️ Arquitectura

Esta aplicación sigue los principios de **Clean Architecture** combinados con un enfoque **Feature-First**:

### Estructura de Capas

```
lib/
├── core/                     # Funcionalidad central compartida
│   ├── constants/           # Constantes de la aplicación
│   ├── errors/              # Manejo de errores y excepciones
│   ├── network/             # Cliente de red y configuración
│   ├── theme/               # Configuración de temas
│   ├── utils/               # Utilidades y helpers
│   └── router/              # Configuración de rutas
├── features/                # Funcionalidades organizadas por feature
│   └── home/               # Feature de inicio
│       ├── data/           # Capa de datos
│       │   ├── datasources/    # Fuentes de datos (API, Cache)
│       │   ├── models/         # Modelos de datos
│       │   └── repositories/   # Implementación de repositorios
│       ├── domain/         # Lógica de negocio
│       │   ├── entities/       # Entidades del dominio
│       │   ├── repositories/   # Interfaces de repositorios
│       │   └── usecases/       # Casos de uso
│       └── presentation/   # Capa de presentación
│           ├── pages/          # Páginas/Pantallas
│           ├── providers/      # Providers de Riverpod
│           └── widgets/        # Widgets específicos del feature
└── shared/                  # Componentes compartidos entre features
    ├── widgets/            # Widgets reutilizables
    └── extensions/         # Extensiones de utilidad
```

## 🚀 Tecnologías Utilizadas

### Framework y Lenguaje
- **Flutter** (SDK 3.9.2+)
- **Dart** (Lenguaje de programación)

### Gestión de Estado
- **flutter_riverpod** (2.5.1) - Gestión reactiva del estado
- **riverpod_annotation** (2.3.5) - Anotaciones para generación de código

### Navegación
- **go_router** (14.2.7) - Navegación declarativa y tipada

### Networking
- **dio** (5.7.0) - Cliente HTTP
- **retrofit** (4.4.1) - Cliente REST tipado
- **json_annotation** (4.9.0) - Serialización JSON

### Almacenamiento Local
- **shared_preferences** (2.3.2) - Preferencias del usuario
- **drift** (2.20.3) - Base de datos SQLite

### Utilidades
- **either_dart** (1.0.0) - Manejo de errores funcional
- **logger** (2.4.0) - Sistema de logging

### UI/UX
- **flutter_svg** (2.0.10+1) - Soporte para SVG
- **cached_network_image** (3.4.1) - Cache de imágenes de red

## 🔧 Configuración del Proyecto

### Instalación

1. **Instalar dependencias**
   ```bash
   flutter pub get
   ```

2. **Ejecutar la aplicación**
   ```bash
   flutter run
   ```

## 🎯 Características Implementadas

### Funcionalidades Actuales
- ✅ Arquitectura completa Feature-First + Clean Architecture
- ✅ Gestión de estado con Riverpod
- ✅ Lista de prototipos con datos mock
- ✅ Búsqueda en tiempo real con debounce
- ✅ Filtrado por estado (Draft, In Review, Published, Archived)
- ✅ Pull-to-refresh
- ✅ Manejo de estados (Loading, Error, Empty)
- ✅ UI responsive con Material 3
- ✅ Navegación con GoRouter
- ✅ Manejo de errores robusto

---

*Este proyecto demuestra la implementación de mejores prácticas en desarrollo Flutter, incluyendo Clean Architecture, Feature-First organization, y Riverpod para gestión de estado reactivo.*
