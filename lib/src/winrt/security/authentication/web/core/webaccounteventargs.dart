// webaccounteventargs.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../../../com/iinspectable.dart';
import '../../../../../combase.dart';
import '../../../../../exceptions.dart';
import '../../../../../macros.dart';
import '../../../../../types.dart';
import '../../../../../utils.dart';
import '../../../../../win32/api_ms_win_core_winrt_string_l1_1_0.g.dart';
import '../../../../../winrt_callbacks.dart';
import '../../../../../winrt_helpers.dart';
import '../../../../internal/hstring_array.dart';
import '../../../credentials/webaccount.dart';
import 'iwebaccounteventargs.dart';

/// Contains information about an event involving a WebAccount.
///
/// {@category Class}
/// {@category winrt}
class WebAccountEventArgs extends IInspectable implements IWebAccountEventArgs {
  WebAccountEventArgs.fromRawPointer(super.ptr);

  // IWebAccountEventArgs methods
  late final _iWebAccountEventArgs = IWebAccountEventArgs.from(this);

  @override
  WebAccount get account => _iWebAccountEventArgs.account;
}
