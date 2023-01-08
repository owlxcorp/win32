// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common enumerations used in the Windows Runtime APIs.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names

import '../../foundation/winrt_enum.dart';

/// {@category Enum}
enum WebAccountPictureSize implements WinRTEnum {
  size64x64(64),
  size208x208(208),
  size424x424(424),
  size1080x1080(1080);

  @override
  final int value;

  const WebAccountPictureSize(this.value);

  factory WebAccountPictureSize.from(int value) =>
      WebAccountPictureSize.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// {@category Enum}
enum WebAccountState implements WinRTEnum {
  none(0),
  connected(1),
  error(2);

  @override
  final int value;

  const WebAccountState(this.value);

  factory WebAccountState.from(int value) =>
      WebAccountState.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
