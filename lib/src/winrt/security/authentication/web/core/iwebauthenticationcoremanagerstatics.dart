// iwebauthenticationcoremanagerstatics.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:async';
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
import '../../../../foundation/iasyncoperation.dart';
import '../../../../internal/async_helpers.dart';
import '../../../../internal/hstring_array.dart';
import '../../../credentials/webaccount.dart';
import '../../../credentials/webaccountprovider.dart';
import 'webtokenrequest.dart';
import 'webtokenrequestresult.dart';

/// @nodoc
const IID_IWebAuthenticationCoreManagerStatics =
    '{6aca7c92-a581-4479-9c10-752eff44fd34}';

/// {@category Interface}
/// {@category winrt}
class IWebAuthenticationCoreManagerStatics extends IInspectable {
  // vtable begins at 6, is 7 entries long.
  IWebAuthenticationCoreManagerStatics.fromRawPointer(super.ptr);

  factory IWebAuthenticationCoreManagerStatics.from(IInspectable interface) =>
      IWebAuthenticationCoreManagerStatics.fromRawPointer(
          interface.toInterface(IID_IWebAuthenticationCoreManagerStatics));

  Future<WebTokenRequestResult?> getTokenSilentlyAsync(
      WebTokenRequest? request) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<WebTokenRequestResult?>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<COMObject> request,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(
                    Pointer, Pointer<COMObject> request, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        request == null
            ? nullptr
            : request.ptr.cast<Pointer<COMObject>>().value,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<WebTokenRequestResult?>.fromRawPointer(retValuePtr,
            creator: WebTokenRequestResult.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<WebTokenRequestResult?> getTokenSilentlyWithWebAccountAsync(
      WebTokenRequest? request, WebAccount? webAccount) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<WebTokenRequestResult?>();

    final hr =
        ptr.ref.vtable
                .elementAt(7)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                Pointer,
                                Pointer<COMObject> request,
                                Pointer<COMObject> webAccount,
                                Pointer<COMObject>)>>>()
                .value
                .asFunction<
                    int Function(Pointer, Pointer<COMObject> request,
                        Pointer<COMObject> webAccount, Pointer<COMObject>)>()(
            ptr.ref.lpVtbl,
            request == null
                ? nullptr
                : request.ptr.cast<Pointer<COMObject>>().value,
            webAccount == null
                ? nullptr
                : webAccount.ptr.cast<Pointer<COMObject>>().value,
            retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<WebTokenRequestResult?>.fromRawPointer(retValuePtr,
            creator: WebTokenRequestResult.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<WebTokenRequestResult?> requestTokenAsync(WebTokenRequest? request) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<WebTokenRequestResult?>();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<COMObject> request,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(
                    Pointer, Pointer<COMObject> request, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        request == null
            ? nullptr
            : request.ptr.cast<Pointer<COMObject>>().value,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<WebTokenRequestResult?>.fromRawPointer(retValuePtr,
            creator: WebTokenRequestResult.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<WebTokenRequestResult?> requestTokenWithWebAccountAsync(
      WebTokenRequest? request, WebAccount? webAccount) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<WebTokenRequestResult?>();

    final hr =
        ptr.ref.vtable
                .elementAt(9)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                Pointer,
                                Pointer<COMObject> request,
                                Pointer<COMObject> webAccount,
                                Pointer<COMObject>)>>>()
                .value
                .asFunction<
                    int Function(Pointer, Pointer<COMObject> request,
                        Pointer<COMObject> webAccount, Pointer<COMObject>)>()(
            ptr.ref.lpVtbl,
            request == null
                ? nullptr
                : request.ptr.cast<Pointer<COMObject>>().value,
            webAccount == null
                ? nullptr
                : webAccount.ptr.cast<Pointer<COMObject>>().value,
            retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<WebTokenRequestResult?>.fromRawPointer(retValuePtr,
            creator: WebTokenRequestResult.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<WebAccount?> findAccountAsync(
      WebAccountProvider? provider, String webAccountId) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<WebAccount?>();

    final webAccountIdHstring = convertToHString(webAccountId);

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<COMObject> provider,
                            IntPtr webAccountId, Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, Pointer<COMObject> provider,
                    int webAccountId, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        provider == null
            ? nullptr
            : provider.ptr.cast<Pointer<COMObject>>().value,
        webAccountIdHstring,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(webAccountIdHstring);

    final asyncOperation = IAsyncOperation<WebAccount?>.fromRawPointer(
        retValuePtr,
        creator: WebAccount.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<WebAccountProvider?> findAccountProviderAsync(
      String webAccountProviderId) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<WebAccountProvider?>();
    final webAccountProviderIdHstring = convertToHString(webAccountProviderId);

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, IntPtr webAccountProviderId,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(
                    Pointer, int webAccountProviderId, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, webAccountProviderIdHstring, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(webAccountProviderIdHstring);

    final asyncOperation = IAsyncOperation<WebAccountProvider?>.fromRawPointer(
        retValuePtr,
        creator: WebAccountProvider.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<WebAccountProvider?> findAccountProviderWithAuthorityAsync(
      String webAccountProviderId, String authority) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<WebAccountProvider?>();
    final webAccountProviderIdHstring = convertToHString(webAccountProviderId);
    final authorityHstring = convertToHString(authority);

    final hr = ptr.ref.vtable
            .elementAt(12)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, IntPtr webAccountProviderId,
                            IntPtr authority, Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, int webAccountProviderId, int authority,
                    Pointer<COMObject>)>()(ptr.ref.lpVtbl,
        webAccountProviderIdHstring, authorityHstring, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(webAccountProviderIdHstring);
    WindowsDeleteString(authorityHstring);

    final asyncOperation = IAsyncOperation<WebAccountProvider?>.fromRawPointer(
        retValuePtr,
        creator: WebAccountProvider.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }
}
