# eCommerce Design System (`ecommerce_ds`)

A reusable design system for Flutter eCommerce applications. Provides design tokens, Material 3 themes (light/dark), custom widgets, utility extensions, and a visual Widgetbook catalog.

![Flutter](https://img.shields.io/badge/Flutter-%3E%3D3.29.0-02569B?logo=flutter)
![Dart](https://img.shields.io/badge/Dart-%5E3.10.7-0175C2?logo=dart)
![Material 3](https://img.shields.io/badge/Material-3-6750A4)

---

## Table of Contents

- [Installation](#installation)
- [Tokens](#tokens)
- [Theme](#theme)
- [Widgets](#widgets)
- [Extensions](#extensions)
- [Widgetbook](#widgetbook)
- [Tests](#tests)
- [Package Structure](#package-structure)
- [Useful Commands](#useful-commands)

---

## Installation

Add the dependency to your app's `pubspec.yaml`:

```yaml
dependencies:
  ecommerce_ds:
    path: packages/ecommerce_ds  # or the corresponding relative path
```

Import the full package:

```dart
import 'package:ecommerce_ds/ecommerce_ds.dart';
```

### Package Dependencies

| Package                | Version   | Purpose                               |
|------------------------|-----------|---------------------------------------|
| `google_fonts`         | ^8.0.2    | Encode Sans typography                |
| `flutter_svg`          | ^2.2.4    | SVG icon support                      |
| `cached_network_image` | ^3.4.1    | Cached network images                 |

---

## Tokens

`abstract final` classes with static constants. Not meant to be instantiated.

### DSColors

Complete system color palette.

```dart
// Neutral scale (0–100)
DSColors.neutral0   // #000000
DSColors.neutral50  // #795548
DSColors.neutral100 // #FFFFFF

// Accents
DSColors.primary            // Main brown
DSColors.primaryContainer   // Light brown
DSColors.secondary          // Dark brown
DSColors.tertiary           // Gold

// Semantic
DSColors.error    // Red
DSColors.success  // Green
DSColors.info     // Blue

// Surfaces
DSColors.backgroundLight / DSColors.backgroundDark
DSColors.surfaceLight    / DSColors.surfaceDark

// Borders
DSColors.outline / DSColors.divider / DSColors.outlineVariant
```

### DSSpacing

Consistent spacing scale with pre-built `SizedBox` gap widgets.

| Token | Value | Gap widget       |
|-------|-------|------------------|
| `xs`  | 4.0   | `DSSpacing.gapXs` |
| `sm`  | 8.0   | `DSSpacing.gapSm` |
| `md`  | 16.0  | `DSSpacing.gapMd` |
| `lg`  | 24.0  | `DSSpacing.gapLg` |
| `xl`  | 32.0  | `DSSpacing.gapXl` |
| `xxl` | 48.0  | —                |

```dart
Column(
  children: [
    Text('Title'),
    DSSpacing.gapMd,  // SizedBox(height: 16)
    Text('Subtitle'),
  ],
)
```

### DSRadii

| Token        | Value  |
|--------------|--------|
| `none`       | 0.0    |
| `small`      | 4.0    |
| `medium`     | 8.0    |
| `large`      | 12.0   |
| `extraLarge` | 16.0   |
| `circular`   | 100.0  |

```dart
BorderRadius.circular(DSRadii.large) // 12.0
```

### DSDurations

| Token    | Value  |
|----------|--------|
| `short`  | 200 ms |
| `medium` | 300 ms |
| `long`   | 500 ms |

```dart
AnimatedContainer(duration: DSDurations.medium, ...)
```

---

## Theme

Material 3 with full light and dark mode support. Typography based on **Encode Sans** via Google Fonts.

### DSTheme

```dart
MaterialApp(
  theme: DSTheme.light,
  darkTheme: DSTheme.dark,
  ...
)
```

Includes `AppBarTheme`, `CardThemeData`, `ElevatedButtonThemeData`, and `InputDecorationTheme` configuration.

### DSColorScheme

```dart
DSColorScheme.light  // Light ColorScheme
DSColorScheme.dark   // Dark ColorScheme
```

### DSTypography

```dart
// Full TextTheme (15 Material styles)
DSTypography.lightTextTheme
DSTypography.darkTextTheme

// Custom styles
DSTypography.cardTitle       // 16sp, semiBold
DSTypography.cardSubtitle    // 14sp, regular
DSTypography.buttonText      // 14sp, semiBold
DSTypography.chipText        // 12sp, medium
DSTypography.navigationText  // 12sp, medium

// Font weights
DSTypography.thin       // w100
DSTypography.extraLight // w200
DSTypography.light      // w300
DSTypography.regular    // w400
DSTypography.medium     // w500
DSTypography.semiBold   // w600
DSTypography.bold       // w700
DSTypography.extraBold  // w800
DSTypography.black      // w900

// Font family
DSTypography.fontFamily // "Encode Sans"
```

---

## Widgets

### DSRoundedContainer

Rounded container with optional background image and tap callback.

```dart
DSRoundedContainer(
  width: 200,
  height: 120,
  radius: DSRadii.large,
  showBorder: true,
  borderColor: DSColors.primary,
  backgroundColor: DSColors.surfaceLight,
  onTap: () => print('tap'),
  child: Text('Content'),
)
```

### DSCircularIcon

Circular icon button (Material or SVG) with optional border and shadow.

```dart
DSCircularIcon(
  icon: Icons.favorite,
  iconColor: DSColors.error,
  size: 24,
  width: 44,
  height: 44,
  showBorder: true,
  onPressed: () {},
)
```

### DSCircularImage

Circular image with local asset and network URL support (CachedNetworkImage).

```dart
DSCircularImage(
  image: 'https://example.com/avatar.png',
  isNetworkImage: true,
  width: 56,
  height: 56,
)
```

### DSRoundedImage

Rounded-rectangle image with tap callback.

```dart
DSRoundedImage(
  imageUrl: 'assets/images/product.png',
  width: 200,
  height: 150,
  borderRadius: DSRadii.large,
  onPressed: () {},
)
```

### DSSkeleton / DSCircleSkeleton

Loading skeleton placeholders.

```dart
DSSkeleton(width: 200, height: 20, radius: DSRadii.small)
DSCircleSkeleton(size: 40)
```

### DSPinterestGridItemSkeleton

Pinterest-style grid skeleton. Alternates heights based on index.

```dart
DSPinterestGridItemSkeleton(index: 0)  // Even  → taller
DSPinterestGridItemSkeleton(index: 1)  // Odd   → shorter
```

---

## Extensions

### DSContextExtension (on `BuildContext`)

```dart
context.theme        // Theme.of(context)
context.colorScheme  // Theme.of(context).colorScheme
context.textTheme    // Theme.of(context).textTheme
context.screenSize   // MediaQuery.sizeOf(context)
context.screenWidth  // screenSize.width
context.screenHeight // screenSize.height
context.isDarkMode   // whether current theme is dark
```

### DSStringExtensions (on `String?`)

```dart
'hello'.capitalize              // "Hello"
'hello world'.titleCase         // "Hello World"
'abcdefghij'.truncate(5)       // "abcde..."
'test@mail.com'.isValidEmail    // true
'https://x.com'.isValidUrl      // true
'#FF5722'.toColor               // Color(0xFFFF5722)
'  extra  spaces  '.removeExtraSpaces // "extra spaces"
```

### DSDateTimeExtensions (on `DateTime`)

```dart
DateTime.now().isToday           // true
DateTime.now().isYesterday       // false
someDate.timeAgo                 // "3h ago", "2d ago"
someDate.formattedDate           // "18/03/2026"
someDate.formattedDateTime       // "18/03/2026 14:30"
```

### DSListExtensions (on `List<T>?`)

```dart
myList.isNullOrEmpty      // false
myList.randomElement      // random element
myList.chunk(3)           // [[1,2,3], [4,5,6], [7]]
```

---

## Widgetbook

Interactive visual catalog for exploring tokens, themes, and widgets in isolation.

### Running the Widgetbook

```bash
# From root
cd packages/ecommerce_ds/example
flutter run -t packages/ecommerce_ds/widgetbook/widgetbook_app.dart -d chrome 
```

### Catalog Contents

| Section     | Components                                                          |
|-------------|---------------------------------------------------------------------|
| **Tokens**  | Neutral palette, accents, semantic, surfaces, spacing, radii        |
| **Theme**   | Typography (TextTheme, custom styles, weights), ColorScheme, Buttons, Cards, Inputs |
| **Widgets** | DSRoundedContainer, DSCircularIcon, DSCircularImage, DSSkeleton, DSPinterestGridItemSkeleton |

Includes:
- **MaterialThemeAddon** — toggle between light and dark themes
- **ViewportAddon** — presets: iPhone 13, iPad Pro 11", Samsung Galaxy S20
- **Knobs** — interactive controls (radius, size, showBorder, etc.)

---

## Tests

48 unit and widget tests covering tokens, theme, widgets, and extensions.

```bash
# From the package root
cd packages/ecommerce_ds
flutter test
```

### Test Files

| File                               | Coverage                               |
|------------------------------------|----------------------------------------|
| `test/tokens/colors_test.dart`     | DSColors — neutral scale, accents, semantic |
| `test/tokens/spacing_test.dart`    | DSSpacing, DSRadii, DSDurations        |
| `test/theme/ds_theme_test.dart`    | DSTheme, DSColorScheme, DSTypography   |
| `test/widgets/ds_widgets_test.dart` | All DS widgets                         |
| `test/extensions/extensions_test.dart` | String, DateTime, List extensions  |

```bash
# With coverage
flutter test --coverage
```

---

## Package Structure

```
ecommerce_ds/
├── lib/
│   ├── ecommerce_ds.dart              # Barrel file (public API)
│   └── src/
│       ├── tokens/
│       │   ├── colors.dart            # DSColors
│       │   ├── spacing.dart           # DSSpacing
│       │   ├── radii.dart             # DSRadii
│       │   └── durations.dart         # DSDurations
│       ├── theme/
│       │   ├── ds_typography.dart     # DSTypography
│       │   ├── ds_color_scheme.dart   # DSColorScheme
│       │   └── ds_theme.dart          # DSTheme
│       ├── widgets/
│       │   ├── containers/            # DSRoundedContainer
│       │   ├── icons/                 # DSCircularIcon
│       │   ├── images/                # DSCircularImage, DSRoundedImage
│       │   └── skeleton/              # DSSkeleton, DSCircleSkeleton, DSPinterestGridItemSkeleton
│       └── extensions/
│           ├── context_extensions.dart
│           ├── string_extensions.dart
│           ├── datetime_extensions.dart
│           └── list_extensions.dart
├── widgetbook/                        # Visual catalog (source)
├── example/                           # Widgetbook runner app
├── test/                              # Unit and widget tests
├── pubspec.yaml
├── CHANGELOG.md
└── README.md
```

---

## Useful Commands

```bash
# Install dependencies
flutter pub get

# Static analysis
flutter analyze

# Run all tests
flutter test

# Tests with coverage
flutter test --coverage

# Run Widgetbook (from example/)
cd example && flutter run -d chrome

# Format code
dart format .

# Check formatting
dart format --set-exit-if-changed .
```

---

## Usage in a Flutter App

```dart
import 'package:ecommerce_ds/ecommerce_ds.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: DSTheme.light,
      darkTheme: DSTheme.dark,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(DSSpacing.md),
          child: Column(
            children: [
              DSRoundedContainer(
                radius: DSRadii.large,
                backgroundColor: context.colorScheme.surface,
                child: Text(
                  'Product',
                  style: DSTypography.cardTitle,
                ),
              ),
              DSSpacing.gapMd,
              DSCircularIcon(
                icon: Icons.favorite,
                iconColor: DSColors.error,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```

