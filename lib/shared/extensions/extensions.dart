// Re-export Design System extensions
export 'package:ecommerce_ds/ecommerce_ds.dart'
    show
        DSContextExtension,
        DSStringExtensions,
        DSDateTimeExtensions,
        DSListExtensions;

// App-specific extensions (backward-compatible aliases)
export './context.extensions.dart';
export './datetime_extensions.dart';
export './list_extensions.dart';
export './string_extensions.dart';
