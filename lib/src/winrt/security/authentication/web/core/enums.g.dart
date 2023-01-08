// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common enumerations used in the Windows Runtime APIs.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names

import '../../../../foundation/winrt_enum.dart';

/// Contains values that describe the result of a web account enumeration
/// operation using the FindAllAccountsAsync method.
///
/// {@category Enum}
enum FindAllWebAccountsStatus implements WinRTEnum {
  success(0),
  notAllowedByProvider(1),
  notSupportedByProvider(2),
  providerError(3);

  @override
  final int value;

  const FindAllWebAccountsStatus(this.value);

  factory FindAllWebAccountsStatus.from(int value) =>
      FindAllWebAccountsStatus.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Represents the prompt type of a web token request.
///
/// {@category Enum}
enum WebTokenRequestPromptType implements WinRTEnum {
  default_(0),
  forceAuthentication(1);

  @override
  final int value;

  const WebTokenRequestPromptType(this.value);

  factory WebTokenRequestPromptType.from(int value) =>
      WebTokenRequestPromptType.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Represents the status of a web token request.
///
/// {@category Enum}
enum WebTokenRequestStatus implements WinRTEnum {
  success(0),
  userCancel(1),
  accountSwitch(2),
  userInteractionRequired(3),
  accountProviderNotAvailable(4),
  providerError(5);

  @override
  final int value;

  const WebTokenRequestStatus(this.value);

  factory WebTokenRequestStatus.from(int value) =>
      WebTokenRequestStatus.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
