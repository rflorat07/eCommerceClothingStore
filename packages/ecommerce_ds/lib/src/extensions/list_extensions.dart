/// Extension methods on [List] for common collection operations.
extension DSListExtensions<T> on List<T> {
  /// Whether the list is empty.
  bool get isNullOrEmpty => isEmpty;

  /// Whether the list is not empty.
  bool get isNotNullOrEmpty => isNotEmpty;

  /// Returns a pseudo-random element, or `null` if empty.
  T? get randomElement {
    if (isEmpty) return null;
    final random = DateTime.now().millisecondsSinceEpoch % length;
    return this[random];
  }

  /// Splits the list into sublists of the given [size].
  List<List<T>> chunk(int size) {
    final chunks = <List<T>>[];
    for (int i = 0; i < length; i += size) {
      chunks.add(sublist(i, i + size > length ? length : i + size));
    }
    return chunks;
  }
}
