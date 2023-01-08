// webauthenticationcoremanager.dart

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
import '../../../../foundation/collections/iiterable.dart';
import '../../../../foundation/iasyncoperation.dart';
import '../../../../internal/hstring_array.dart';
import '../../../../system/user.dart';
import '../../../credentials/webaccount.dart';
import '../../../credentials/webaccountprovider.dart';
import 'findallaccountsresult.dart';
//import 'iwebauthenticationcoremanagerinterop.dart';
import 'iwebauthenticationcoremanagerstatics.dart';
import 'iwebauthenticationcoremanagerstatics2.dart';
import 'iwebauthenticationcoremanagerstatics3.dart';
import 'iwebauthenticationcoremanagerstatics4.dart';
import 'webaccountmonitor.dart';
import 'webtokenrequest.dart';
import 'webtokenrequestresult.dart';

/// Contains core methods for obtaining tokens from web account providers.
///
/// {@category Class}
/// {@category winrt}
class WebAuthenticationCoreManager extends IInspectable {
  WebAuthenticationCoreManager.fromRawPointer(super.ptr);

  static const _className =
      'Windows.Security.Authentication.Web.Core.WebAuthenticationCoreManager';

  // IWebAuthenticationCoreManagerStatics methods
  static Future<WebTokenRequestResult?> getTokenSilentlyAsync(
      WebTokenRequest request) {
    final activationFactoryPtr = CreateActivationFactory(
        _className, IID_IWebAuthenticationCoreManagerStatics);
    final object = IWebAuthenticationCoreManagerStatics.fromRawPointer(
        activationFactoryPtr);

    try {
      return object.getTokenSilentlyAsync(request);
    } finally {
      object.release();
    }
  }

  static Future<WebTokenRequestResult?> getTokenSilentlyWithWebAccountAsync(
      WebTokenRequest request, WebAccount webAccount) {
    final activationFactoryPtr = CreateActivationFactory(
        _className, IID_IWebAuthenticationCoreManagerStatics);
    final object = IWebAuthenticationCoreManagerStatics.fromRawPointer(
        activationFactoryPtr);

    try {
      return object.getTokenSilentlyWithWebAccountAsync(request, webAccount);
    } finally {
      object.release();
    }
  }

  static Future<WebTokenRequestResult?> requestTokenAsync(
      WebTokenRequest request) {
    final activationFactoryPtr = CreateActivationFactory(
        _className, IID_IWebAuthenticationCoreManagerStatics);
    final object = IWebAuthenticationCoreManagerStatics.fromRawPointer(
        activationFactoryPtr);

    try {
      return object.requestTokenAsync(request);
    } finally {
      object.release();
    }
  }

  static Future<WebTokenRequestResult?> requestTokenWithWebAccountAsync(
      WebTokenRequest request, WebAccount webAccount) {
    final activationFactoryPtr = CreateActivationFactory(
        _className, IID_IWebAuthenticationCoreManagerStatics);
    final object = IWebAuthenticationCoreManagerStatics.fromRawPointer(
        activationFactoryPtr);

    try {
      return object.requestTokenWithWebAccountAsync(request, webAccount);
    } finally {
      object.release();
    }
  }

  //   static Future<WebTokenRequestResult?> requestTokenForWindowAsync(int hWnd,
  //     WebTokenRequest request) {
  //   final activationFactoryPtr = CreateActivationFactory(
  //       _className, IID_IWebAuthenticationCoreManagerInterop);
  //   final object = IWebAuthenticationCoreManagerInterop.fromRawPointer(
  //       activationFactoryPtr);

  //   try {
  //     return object.requestTokenForWindowAsync(hWnd, request);
  //   } finally {
  //     object.release();
  //   }
  // }

  //   static Future<WebTokenRequestResult?> requestTokenForWindowWithWebAccountAsync(int hWnd,
  //     WebTokenRequest request, WebAccount webAccount) {
  //   final activationFactoryPtr = CreateActivationFactory(
  //       _className, IID_IWebAuthenticationCoreManagerInterop);
  //   final object = IWebAuthenticationCoreManagerInterop.fromRawPointer(
  //       activationFactoryPtr);

  //   try {
  //     return object.requestTokenForWindowWithWebAccountAsync(hWnd, request, webAccount);
  //   } finally {
  //     object.release();
  //   }
  // }

  static Future<WebAccount?> findAccountAsync(
      WebAccountProvider provider, String webAccountId) {
    final activationFactoryPtr = CreateActivationFactory(
        _className, IID_IWebAuthenticationCoreManagerStatics);
    final object = IWebAuthenticationCoreManagerStatics.fromRawPointer(
        activationFactoryPtr);

    try {
      return object.findAccountAsync(provider, webAccountId);
    } finally {
      object.release();
    }
  }

  static Future<WebAccountProvider?> findAccountProviderAsync(
      String webAccountProviderId) {
    final activationFactoryPtr = CreateActivationFactory(
        _className, IID_IWebAuthenticationCoreManagerStatics);
    final object = IWebAuthenticationCoreManagerStatics.fromRawPointer(
        activationFactoryPtr);

    try {
      return object.findAccountProviderAsync(webAccountProviderId);
    } finally {
      object.release();
    }
  }

  static Future<WebAccountProvider?> findAccountProviderWithAuthorityAsync(
      String webAccountProviderId, String authority) {
    final activationFactoryPtr = CreateActivationFactory(
        _className, IID_IWebAuthenticationCoreManagerStatics);
    final object = IWebAuthenticationCoreManagerStatics.fromRawPointer(
        activationFactoryPtr);

    try {
      return object.findAccountProviderWithAuthorityAsync(
          webAccountProviderId, authority);
    } finally {
      object.release();
    }
  }

  // IWebAuthenticationCoreManagerStatics2 methods
  static Future<WebAccountProvider?>
      findAccountProviderWithAuthorityForUserAsync(
          String webAccountProviderId, String authority, User user) {
    final activationFactoryPtr = CreateActivationFactory(
        _className, IID_IWebAuthenticationCoreManagerStatics2);
    final object = IWebAuthenticationCoreManagerStatics2.fromRawPointer(
        activationFactoryPtr);

    try {
      return object.findAccountProviderWithAuthorityForUserAsync(
          webAccountProviderId, authority, user);
    } finally {
      object.release();
    }
  }

  // IWebAuthenticationCoreManagerStatics3 methods
  static WebAccountMonitor createWebAccountMonitor(
      IIterable<WebAccount> webAccounts) {
    final activationFactoryPtr = CreateActivationFactory(
        _className, IID_IWebAuthenticationCoreManagerStatics3);
    final object = IWebAuthenticationCoreManagerStatics3.fromRawPointer(
        activationFactoryPtr);

    try {
      return object.createWebAccountMonitor(webAccounts);
    } finally {
      object.release();
    }
  }

  // IWebAuthenticationCoreManagerStatics4 methods
  static Future<FindAllAccountsResult?> findAllAccountsAsync(
      WebAccountProvider provider) {
    final activationFactoryPtr = CreateActivationFactory(
        _className, IID_IWebAuthenticationCoreManagerStatics4);
    final object = IWebAuthenticationCoreManagerStatics4.fromRawPointer(
        activationFactoryPtr);

    try {
      return object.findAllAccountsAsync(provider);
    } finally {
      object.release();
    }
  }

  static Future<FindAllAccountsResult?> findAllAccountsWithClientIdAsync(
      WebAccountProvider provider, String clientId) {
    final activationFactoryPtr = CreateActivationFactory(
        _className, IID_IWebAuthenticationCoreManagerStatics4);
    final object = IWebAuthenticationCoreManagerStatics4.fromRawPointer(
        activationFactoryPtr);

    try {
      return object.findAllAccountsWithClientIdAsync(provider, clientId);
    } finally {
      object.release();
    }
  }

  static Future<WebAccountProvider?> findSystemAccountProviderAsync(
      String webAccountProviderId) {
    final activationFactoryPtr = CreateActivationFactory(
        _className, IID_IWebAuthenticationCoreManagerStatics4);
    final object = IWebAuthenticationCoreManagerStatics4.fromRawPointer(
        activationFactoryPtr);

    try {
      return object.findSystemAccountProviderAsync(webAccountProviderId);
    } finally {
      object.release();
    }
  }

  static Future<WebAccountProvider?>
      findSystemAccountProviderWithAuthorityAsync(
          String webAccountProviderId, String authority) {
    final activationFactoryPtr = CreateActivationFactory(
        _className, IID_IWebAuthenticationCoreManagerStatics4);
    final object = IWebAuthenticationCoreManagerStatics4.fromRawPointer(
        activationFactoryPtr);

    try {
      return object.findSystemAccountProviderWithAuthorityAsync(
          webAccountProviderId, authority);
    } finally {
      object.release();
    }
  }

  static Future<WebAccountProvider?>
      findSystemAccountProviderWithAuthorityForUserAsync(
          String webAccountProviderId, String authority, User user) {
    final activationFactoryPtr = CreateActivationFactory(
        _className, IID_IWebAuthenticationCoreManagerStatics4);
    final object = IWebAuthenticationCoreManagerStatics4.fromRawPointer(
        activationFactoryPtr);

    try {
      return object.findSystemAccountProviderWithAuthorityForUserAsync(
          webAccountProviderId, authority, user);
    } finally {
      object.release();
    }
  }
}
