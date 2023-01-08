// webtokenresponse.dart

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
import '../../../../foundation/collections/imap.dart';
import '../../../../internal/hstring_array.dart';
import '../../../credentials/webaccount.dart';
import 'iwebtokenresponse.dart';
import 'iwebtokenresponsefactory.dart';
import 'webprovidererror.dart';

/// Represents the response from a web account provider to a web token
/// request.
///
/// {@category Class}
/// {@category winrt}
class WebTokenResponse extends IInspectable implements IWebTokenResponse {
  WebTokenResponse() : super(ActivateClass(_className));
  WebTokenResponse.fromRawPointer(super.ptr);

  static const _className =
      'Windows.Security.Authentication.Web.Core.WebTokenResponse';

  // IWebTokenResponseFactory methods
  static WebTokenResponse createWithToken(String token) {
    final activationFactoryPtr =
        CreateActivationFactory(_className, IID_IWebTokenResponseFactory);
    final object =
        IWebTokenResponseFactory.fromRawPointer(activationFactoryPtr);

    try {
      return object.createWithToken(token);
    } finally {
      object.release();
    }
  }

  static WebTokenResponse createWithTokenAndAccount(
      String token, WebAccount webAccount) {
    final activationFactoryPtr =
        CreateActivationFactory(_className, IID_IWebTokenResponseFactory);
    final object =
        IWebTokenResponseFactory.fromRawPointer(activationFactoryPtr);

    try {
      return object.createWithTokenAndAccount(token, webAccount);
    } finally {
      object.release();
    }
  }

  static WebTokenResponse createWithTokenAccountAndError(
      String token, WebAccount webAccount, WebProviderError error) {
    final activationFactoryPtr =
        CreateActivationFactory(_className, IID_IWebTokenResponseFactory);
    final object =
        IWebTokenResponseFactory.fromRawPointer(activationFactoryPtr);

    try {
      return object.createWithTokenAccountAndError(token, webAccount, error);
    } finally {
      object.release();
    }
  }

  // IWebTokenResponse methods
  late final _iWebTokenResponse = IWebTokenResponse.from(this);

  @override
  String get token => _iWebTokenResponse.token;

  @override
  WebProviderError? get providerError => _iWebTokenResponse.providerError;

  @override
  WebAccount? get webAccount => _iWebTokenResponse.webAccount;

  @override
  IMap<String, String> get properties => _iWebTokenResponse.properties;
}
