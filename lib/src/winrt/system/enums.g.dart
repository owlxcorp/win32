// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common enumerations used in the Windows Runtime APIs.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names

import '../foundation/winrt_enum.dart';

/// Gets the user type.
///
/// {@category Enum}
enum UserType implements WinRTEnum {
  localUser(0),
  remoteUser(1),
  localGuest(2),
  remoteGuest(3),
  systemManaged(4);

  @override
  final int value;

  const UserType(this.value);

  factory UserType.from(int value) =>
      UserType.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
