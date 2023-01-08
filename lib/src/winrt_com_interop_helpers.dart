// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Helper wrapper classes for WinRT COM interop interfaces.
// See https://learn.microsoft.com/en-us/windows/apps/develop/ui-input/display-ui-objects

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'com/iinitializewithwindow.dart';
import 'com/iinspectable.dart';
import 'com/iwebauthenticationcoremanagerinterop.dart';
import 'combase.dart';
import 'exceptions.dart';
import 'guid.dart';
import 'macros.dart';
import 'win32/user32.g.dart';
import 'winrt/foundation/iasyncoperation.dart';
import 'winrt/internal/async_helpers.dart';
import 'winrt/security/authentication/web/core/webtokenrequest.dart';
import 'winrt/security/authentication/web/core/webtokenrequestresult.dart';
import 'winrt_helpers.dart';

/// Exposes a method through which a client can provide an owner window to a
/// Windows Runtime (WinRT) object used in a desktop application.
///
/// {@category Class}
/// {@category winrt}
class InitializeWithWindow {
  /// Specifies an owner window to be used by a Windows Runtime object that is
  /// used in a desktop app.
  ///
  /// [target] must be a WinRT object that implements the
  /// `IInitializeWithWindow` interface (e.g. `FileOpenPicker`).
  ///
  /// [hwnd] represents the handle of the window to be used as the owner window.
  /// Use `GetConsoleWindow()` for console apps or `GetShellWindow()` for
  /// Flutter apps. By default, `GetShellWindow()` is used.
  ///
  /// ```dart
  /// final picker = FileOpenPicker()
  ///   ..suggestedStartLocation = PickerLocationId.desktop
  ///   ..viewMode = PickerViewMode.thumbnail;
  /// final filters = picker.fileTypeFilter..append('*'); // Allow all types
  /// InitializeWithWindow.initialize(picker);
  /// final pickedFile = await picker.pickSingleFileAsync();
  /// ```
  static void initialize(IInspectable target, [int? hwnd]) {
    hwnd ??= GetShellWindow();

    final initializeWithWindow = IInitializeWithWindow.from(target);
    try {
      final hr = initializeWithWindow.initialize(hwnd);
      if (FAILED(hr)) throw WindowsException(hr);
    } finally {
      initializeWithWindow.release();
    }
  }
}

class WebAuthenticationCoreManagerInterop {
  static const _className =
      'Windows.Security.Authentication.Web.Core.WebAuthenticationCoreManager';

  // IAsyncOperation<WebTokenRequestResult>
  static const _iid = '{0a815852-7c44-5674-b3d2-fa2e4c1e46c9}';

  static Future<WebTokenRequestResult?> requestTokenForWindowAsync(
      int appWindow, WebTokenRequest request) {
    final completer = Completer<WebTokenRequestResult?>();

    final webAuthenticationCoreManagerInterop =
        IWebAuthenticationCoreManagerInterop(CreateActivationFactory(
            _className, IID_IWebAuthenticationCoreManagerInterop));

    final pIID = GUIDFromString(_iid);
    final asyncOperationPtr = calloc<COMObject>();

    final hr = webAuthenticationCoreManagerInterop.requestTokenForWindowAsync(
        appWindow,
        request.ptr.cast<Pointer<COMObject>>().value,
        pIID,
        asyncOperationPtr.cast());
    if (FAILED(hr)) throw WindowsException(hr);

    final asyncOperation =
        IAsyncOperation<WebTokenRequestResult?>.fromRawPointer(
            asyncOperationPtr,
            creator: WebTokenRequestResult.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  //  static IAsyncOperation<WebTokenRequestResult> RequestTokenWithWebAccountForWindowAsync(IntPtr appWindow, WebTokenRequest request, WebAccount webAccount)
  //   {
  //       var iid = GuidGenerator.CreateIID(typeof(IAsyncOperation<WebTokenRequestResult>));
  //       return (IAsyncOperation<WebTokenRequestResult>)webAuthenticationCoreManagerInterop.RequestTokenWithWebAccountForWindowAsync(appWindow, request, webAccount, iid);
  //   }
}
