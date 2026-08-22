# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project overview

A Flutter e-commerce clothing store app (package name `prototype_viewer`) built with Clean Architecture + Feature-First organization and Riverpod for state management. Currently the app is essentially a single feature (`clothing_store`) with mock/local data — there is no real backend integration yet (see "Current state" below).

There is also a local, independently versioned design system package at `packages/ecommerce_ds` that the app depends on via a `path:` dependency and is meant to hold shared theme, tokens, extensions, and widgets.

## Commands

Run all commands from the repo root unless noted.

```bash
# Install dependencies (app)
flutter pub get

# Install dependencies (design system package)
cd packages/ecommerce_ds && flutter pub get

# Run the app
flutter run
flutter run -d chrome    # web
flutter run -d macos     # macOS

# Static analysis (uses analysis_options.yaml + flutter_lints)
flutter analyze

# Format
dart format .

# Code generation (Freezed, json_serializable, Riverpod generator, Retrofit, Drift)
# Needed after changing any @riverpod, @freezed, @JsonSerializable, or Drift table definitions.
dart run build_runner build --delete-conflicting-outputs
dart run build_runner watch --delete-conflicting-outputs   # while iterating

# Tests
flutter test                          # app has no test/ directory yet
cd packages/ecommerce_ds && flutter test               # ecommerce_ds package tests
cd packages/ecommerce_ds && flutter test test/tokens/colors_test.dart   # single file
cd packages/ecommerce_ds && flutter test --plain-name "some test name"  # single test by name

# Widgetbook (UI catalog for ecommerce_ds components/tokens/theme)
cd packages/ecommerce_ds && flutter run -t widgetbook/widgetbook_app.dart
```

## Architecture

### Layering (per feature)

Each feature under `lib/features/<feature>/` follows Clean Architecture with three layers, each with its own barrel file (`entities.dart`, `models.dart`, `repositories.dart`, `usecases.dart`, `datasources.dart`, `providers.dart`, `pages.dart`, `widgets.dart`) that re-exports everything in that directory — import the barrel, not individual files, from outside the directory:

- `domain/` — `entities/` (Freezed value objects), `repositories/` (abstract interfaces), `usecases/` (one class per use case, calling into the repository interface).
- `data/` — `models/` (Freezed + json_serializable, extend/map to domain entities), `datasources/` (local/remote data access — currently local-only mock data), `repositories/` (concrete implementation of the domain repository interface).
- `presentation/` — `providers/` (Riverpod, `@riverpod`-annotated, generates `.g.dart`), `pages/`, `widgets/`.

The one implemented feature is `clothing_store`, nested under a `high_fidelity/` subfolder: `lib/features/clothing_store/high_fidelity/{domain,data,presentation}/`. When adding a new feature, mirror this structure under `lib/features/<feature_name>/`.

Dependency direction is strictly `presentation → domain ← data`; domain has no Flutter/Riverpod/data imports. Providers wire the layers together (see `clothing_store_providers.dart`): datasource → repository → usecase → Riverpod provider/notifier consumed by widgets.

### Core and shared

- `lib/core/` — cross-feature infrastructure: `constants/`, `errors/` (`Failure`/`Exception` types for Either-based error handling via `either_dart`), `network/` (Dio client), `router/app_router.dart` (single `GoRouter` instance, all routes as `AppRoutes.*` string constants), `theme/`, `utils/`.
- `lib/shared/` — cross-feature reusable widgets and extensions not tied to the design system package (e.g. `common_widgets.dart`, `error_widgets.dart`, skeleton loaders, context/string/list/datetime extensions).
- App entry point (`lib/main.dart`) wraps everything in `ProviderScope` and uses `MaterialApp.router` with `appRouter` from `core/router`.

### Design system package (`packages/ecommerce_ds`)

A separate Flutter package (own `pubspec.yaml`, own `analysis_options.yaml`, own tests, own Widgetbook catalog) consumed by the app via a local path dependency (`ecommerce_ds: path: packages/ecommerce_ds` in the root `pubspec.yaml`). It is the intended home for shared design tokens (`lib/src/tokens/`: colors, spacing, radii, durations), theme (`lib/src/theme/`: `ds_theme.dart`, `ds_color_scheme.dart`, `ds_typography.dart`), extensions, and presentational widgets (`lib/src/widgets/`) — mirrors of equivalents still living in `lib/shared/` in the app. New shared UI primitives and design tokens should go here rather than into `lib/shared/`; existing duplicates in `lib/shared/` are being migrated over (see recent git history).

After editing `packages/ecommerce_ds`, run `flutter pub get` in the app root to pick up changes (path dependency), since Flutter does not hot-reload path-dependency source changes across packages automatically in all cases.

### State management conventions

- Riverpod with code generation (`riverpod_annotation` + `riverpod_generator`): providers are functions/classes annotated `@riverpod`, with a matching generated `<file>.g.dart` — always regenerate (`build_runner`) after adding/editing a provider, and check in the generated file.
- Domain/data layers return values via `either_dart`'s `Either<Failure, T>` rather than throwing.
- Models (`data/models/`) and entities (`domain/entities/`) are `Freezed` classes; models also carry `@JsonSerializable` for (eventual) API/local serialization — regenerate `.freezed.dart`/`.g.dart` after touching these.

### Linting

`analysis_options.yaml` extends `flutter_lints` with `prefer_relative_imports: true` (imports within/across `lib/` use relative paths, as seen throughout) and `prefer_single_quotes`, `prefer_const_*` enabled. The `ecommerce_ds` package has its own `analysis_options.yaml` — check it before assuming the same rules apply there.

## Current state / gaps to be aware of

- No real backend: `clothing_store` data comes from a local datasource with mock data; `NetworkClient` (Dio) exists in `core/network/` but isn't wired to any live API yet.
- No `test/` directory in the app itself yet — only `packages/ecommerce_ds` has tests.
- `ARCHITECTURE_SUMMARY.md` at the repo root is a (Spanish-language) implementation summary from earlier scaffolding work — useful background but not authoritative for current file layout (it describes an earlier "home"/"prototype" feature naming that has since been replaced by `clothing_store`).
