// webaccountmonitor.dart

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
import 'iwebaccountmonitor.dart';
import 'iwebaccountmonitor2.dart';

/// Allows an app to monitor specific web accounts and raises events when
/// those web accounts change.
///
/// {@category Class}
/// {@category winrt}
class WebAccountMonitor extends IInspectable
    implements IWebAccountMonitor, IWebAccountMonitor2 {
  WebAccountMonitor.fromRawPointer(super.ptr);

  // IWebAccountMonitor methods
  late final _iWebAccountMonitor = IWebAccountMonitor.from(this);

  @override
  int add_Updated(Pointer<NativeFunction<TypedEventHandler>> handler) =>
      _iWebAccountMonitor.add_Updated(handler);

  @override
  void remove_Updated(int token) => _iWebAccountMonitor.remove_Updated(token);

  @override
  int add_Removed(Pointer<NativeFunction<TypedEventHandler>> handler) =>
      _iWebAccountMonitor.add_Removed(handler);

  @override
  void remove_Removed(int token) => _iWebAccountMonitor.remove_Removed(token);

  @override
  int add_DefaultSignInAccountChanged(
          Pointer<NativeFunction<TypedEventHandler>> handler) =>
      _iWebAccountMonitor.add_DefaultSignInAccountChanged(handler);

  @override
  void remove_DefaultSignInAccountChanged(int token) =>
      _iWebAccountMonitor.remove_DefaultSignInAccountChanged(token);

  // IWebAccountMonitor2 methods
  late final _iWebAccountMonitor2 = IWebAccountMonitor2.from(this);

  @override
  int add_AccountPictureUpdated(
          Pointer<NativeFunction<TypedEventHandler>> handler) =>
      _iWebAccountMonitor2.add_AccountPictureUpdated(handler);

  @override
  void remove_AccountPictureUpdated(int token) =>
      _iWebAccountMonitor2.remove_AccountPictureUpdated(token);
}
