// webtokenrequest.dart

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
import '../../../credentials/webaccountprovider.dart';
import 'enums.g.dart';
import 'iwebtokenrequest.dart';
import 'iwebtokenrequest2.dart';
import 'iwebtokenrequest3.dart';
import 'iwebtokenrequestfactory.dart';

/// Represents a request to an online identity provider for an
/// authentication token.
///
/// {@category Class}
/// {@category winrt}
class WebTokenRequest extends IInspectable
    implements IWebTokenRequest, IWebTokenRequest2, IWebTokenRequest3 {
  WebTokenRequest.fromRawPointer(super.ptr);

  static const _className =
      'Windows.Security.Authentication.Web.Core.WebTokenRequest';

  // IWebTokenRequestFactory methods
  static WebTokenRequest create(
      WebAccountProvider provider, String scope, String clientId) {
    final activationFactoryPtr =
        CreateActivationFactory(_className, IID_IWebTokenRequestFactory);
    final object = IWebTokenRequestFactory.fromRawPointer(activationFactoryPtr);

    try {
      return object.create(provider, scope, clientId);
    } finally {
      object.release();
    }
  }

  static WebTokenRequest createWithPromptType(WebAccountProvider provider,
      String scope, String clientId, WebTokenRequestPromptType promptType) {
    final activationFactoryPtr =
        CreateActivationFactory(_className, IID_IWebTokenRequestFactory);
    final object = IWebTokenRequestFactory.fromRawPointer(activationFactoryPtr);

    try {
      return object.createWithPromptType(provider, scope, clientId, promptType);
    } finally {
      object.release();
    }
  }

  static WebTokenRequest createWithProvider(WebAccountProvider provider) {
    final activationFactoryPtr =
        CreateActivationFactory(_className, IID_IWebTokenRequestFactory);
    final object = IWebTokenRequestFactory.fromRawPointer(activationFactoryPtr);

    try {
      return object.createWithProvider(provider);
    } finally {
      object.release();
    }
  }

  static WebTokenRequest createWithScope(
      WebAccountProvider provider, String scope) {
    final activationFactoryPtr =
        CreateActivationFactory(_className, IID_IWebTokenRequestFactory);
    final object = IWebTokenRequestFactory.fromRawPointer(activationFactoryPtr);

    try {
      return object.createWithScope(provider, scope);
    } finally {
      object.release();
    }
  }

  // IWebTokenRequest methods
  late final _iWebTokenRequest = IWebTokenRequest.from(this);

  @override
  WebAccountProvider get webAccountProvider =>
      _iWebTokenRequest.webAccountProvider;

  @override
  String get scope => _iWebTokenRequest.scope;

  @override
  String get clientId => _iWebTokenRequest.clientId;

  @override
  WebTokenRequestPromptType get promptType => _iWebTokenRequest.promptType;

  @override
  IMap<String, String> get properties => _iWebTokenRequest.properties;

  // IWebTokenRequest2 methods
  late final _iWebTokenRequest2 = IWebTokenRequest2.from(this);

  @override
  IMap<String, String> get appProperties => _iWebTokenRequest2.appProperties;

  // IWebTokenRequest3 methods
  late final _iWebTokenRequest3 = IWebTokenRequest3.from(this);

  @override
  String get correlationId => _iWebTokenRequest3.correlationId;

  @override
  set correlationId(String value) => _iWebTokenRequest3.correlationId = value;
}
