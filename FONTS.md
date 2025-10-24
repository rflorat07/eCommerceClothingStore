# Encode Sans Font Configuration

## Google Fonts Implementation

The Encode Sans font is automatically downloaded and cached by the `google_fonts` package. This provides the following benefits:

### Features:
- **Automatic font loading**: Fonts are downloaded on first use
- **Caching**: Fonts are cached locally for performance
- **Multiple weights**: Support for all 9 weights (100-900)
- **Web compatibility**: Works seamlessly on all platforms
- **Dynamic loading**: Fonts load as needed

### Usage Examples:

```dart
import 'package:google_fonts/google_fonts.dart';

// Basic usage
Text(
  'Hello World',
  style: GoogleFonts.encodeSans(),
)

// With custom properties
Text(
  'Hello World',
  style: GoogleFonts.encodeSans(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.5,
  ),
)

// Apply to entire theme
MaterialApp(
  theme: ThemeData(
    textTheme: GoogleFonts.encodeSansTextTheme(),
  ),
)
```

### Available Weights:
- **Thin**: FontWeight.w100
- **Extra Light**: FontWeight.w200  
- **Light**: FontWeight.w300
- **Regular**: FontWeight.w400
- **Medium**: FontWeight.w500
- **Semi Bold**: FontWeight.w600
- **Bold**: FontWeight.w700
- **Extra Bold**: FontWeight.w800
- **Black**: FontWeight.w900

### Performance Considerations:
- Fonts are downloaded once and cached
- Initial load may have slight delay
- Consider preloading critical fonts
- Use `GoogleFonts.pendingFonts()` to preload

### Fallback Strategy:
If Google Fonts fails to load, the app will fall back to:
1. System default sans-serif font
2. Material Design's default font
3. Platform-specific fallbacks

### Licensing:
Encode Sans is licensed under the Open Font License (OFL), making it free for commercial and personal use.

## Implementation Details

### Core Files:
- `lib/core/theme/app_typography.dart` - Complete typography system
- `lib/core/theme/app_theme.dart` - Theme integration
- `lib/core/constants/typography_constants.dart` - Typography constants
- `lib/core/demo/typography_demo_page.dart` - Live demonstration

### Integration:
The font is integrated at the theme level, ensuring consistent usage across the entire application. All text widgets automatically inherit the Encode Sans font family.

### Testing:
Use the typography demo page (`/typography` route) to see all font styles and weights in action.