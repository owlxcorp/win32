// webaccount.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../com/iinspectable.dart';
import '../../../combase.dart';
import '../../../exceptions.dart';
import '../../../macros.dart';
import '../../../types.dart';
import '../../../utils.dart';
import '../../../win32/api_ms_win_core_winrt_string_l1_1_0.g.dart';
import '../../../winrt_callbacks.dart';
import '../../../winrt_helpers.dart';
import '../../foundation/collections/imapview.dart';
import '../../foundation/iasyncaction.dart';
import '../../foundation/iasyncoperation.dart';
import '../../internal/hstring_array.dart';
import '../../storage/streams/irandomaccessstream.dart';
import 'enums.g.dart';
import 'iwebaccount.dart';
import 'iwebaccount2.dart';
import 'iwebaccountfactory.dart';
import 'webaccountprovider.dart';

/// Identifies an account from a web account provider.
///
/// {@category Class}
/// {@category winrt}
class WebAccount extends IInspectable implements IWebAccount, IWebAccount2 {
  WebAccount.fromRawPointer(super.ptr);

  static const _className = 'Windows.Security.Credentials.WebAccount';

  // IWebAccountFactory methods
  static WebAccount createWebAccount(WebAccountProvider webAccountProvider,
      String userName, WebAccountState state) {
    final activationFactoryPtr =
        CreateActivationFactory(_className, IID_IWebAccountFactory);
    final object = IWebAccountFactory.fromRawPointer(activationFactoryPtr);

    try {
      return object.createWebAccount(webAccountProvider, userName, state);
    } finally {
      object.release();
    }
  }

  // IWebAccount methods
  late final _iWebAccount = IWebAccount.from(this);

  @override
  WebAccountProvider? get webAccountProvider => _iWebAccount.webAccountProvider;

  @override
  String get userName => _iWebAccount.userName;

  @override
  WebAccountState get state => _iWebAccount.state;

  // IWebAccount2 methods
  late final _iWebAccount2 = IWebAccount2.from(this);

  @override
  String get id => _iWebAccount2.id;

  @override
  Map<String, String> get properties => _iWebAccount2.properties;

  @override
  Future<IRandomAccessStream?> getPictureAsync(
          WebAccountPictureSize desizedSize) =>
      _iWebAccount2.getPictureAsync(desizedSize);

  @override
  Future<void> signOutAsync() => _iWebAccount2.signOutAsync();

  @override
  Future<void> signOutWithClientIdAsync(String clientId) =>
      _iWebAccount2.signOutWithClientIdAsync(clientId);
}
