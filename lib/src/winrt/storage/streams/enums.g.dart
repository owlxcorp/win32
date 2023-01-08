// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common enumerations used in the Windows Runtime APIs.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names

import '../../foundation/winrt_enum.dart';

/// Specifies the read options for an input stream. This enumeration
/// supports a bitwise combination of its member values.
///
/// {@category Enum}
class InputStreamOptions extends WinRTEnum {
  const InputStreamOptions(super.value, {super.name});

  factory InputStreamOptions.from(int value) =>
      InputStreamOptions.values.firstWhere((e) => e.value == value,
          orElse: () => InputStreamOptions(value));

  static const none = InputStreamOptions(0, name: 'none');
  static const partial = InputStreamOptions(1, name: 'partial');
  static const readAhead = InputStreamOptions(2, name: 'readAhead');

  static const List<InputStreamOptions> values = [none, partial, readAhead];

  InputStreamOptions operator &(InputStreamOptions other) =>
      InputStreamOptions(value & other.value);

  InputStreamOptions operator |(InputStreamOptions other) =>
      InputStreamOptions(value | other.value);

  /// Determines whether one or more bit fields are set in the current enum
  /// value.
  ///
  /// ```dart
  /// final fileAttributes = FileAttributes.readOnly | FileAttributes.archive;
  /// fileAttributes.hasFlag(FileAttributes.readOnly)); // `true`
  /// fileAttributes.hasFlag(FileAttributes.temporary)); // `false`
  /// fileAttributes.hasFlag(
  ///     FileAttributes.readOnly | FileAttributes.archive)); // `true`
  /// ```
  bool hasFlag(InputStreamOptions flag) {
    if (value != 0 && flag.value == 0) return false;
    return value & flag.value == flag.value;
  }
}
