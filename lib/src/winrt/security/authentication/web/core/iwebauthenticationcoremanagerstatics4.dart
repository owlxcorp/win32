// iwebauthenticationcoremanagerstatics4.dart

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
import '../../../../system/user.dart';
import '../../../credentials/webaccount.dart';
import '../../../credentials/webaccountprovider.dart';
import 'findallaccountsresult.dart';
import 'iwebauthenticationcoremanagerstatics.dart';
import 'webtokenrequest.dart';
import 'webtokenrequestresult.dart';

/// @nodoc
const IID_IWebAuthenticationCoreManagerStatics4 =
    '{54e633fe-96e0-41e8-9832-1298897c2aaf}';

/// {@category Interface}
/// {@category winrt}
class IWebAuthenticationCoreManagerStatics4 extends IInspectable
    implements IWebAuthenticationCoreManagerStatics {
  // vtable begins at 6, is 5 entries long.
  IWebAuthenticationCoreManagerStatics4.fromRawPointer(super.ptr);

  factory IWebAuthenticationCoreManagerStatics4.from(IInspectable interface) =>
      IWebAuthenticationCoreManagerStatics4.fromRawPointer(
          interface.toInterface(IID_IWebAuthenticationCoreManagerStatics4));

  Future<FindAllAccountsResult?> findAllAccountsAsync(
      WebAccountProvider provider) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<FindAllAccountsResult?>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<COMObject> provider,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, Pointer<COMObject> provider,
                    Pointer<COMObject>)>()(ptr.ref.lpVtbl,
        provider.ptr.cast<Pointer<COMObject>>().value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<FindAllAccountsResult?>.fromRawPointer(retValuePtr,
            creator: FindAllAccountsResult.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<FindAllAccountsResult?> findAllAccountsWithClientIdAsync(
      WebAccountProvider provider, String clientId) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<FindAllAccountsResult?>();

    final clientIdHstring = convertToHString(clientId);

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<COMObject> provider,
                            IntPtr clientId, Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, Pointer<COMObject> provider, int clientId,
                    Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        provider.ptr.cast<Pointer<COMObject>>().value,
        clientIdHstring,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(clientIdHstring);

    final asyncOperation =
        IAsyncOperation<FindAllAccountsResult?>.fromRawPointer(retValuePtr,
            creator: FindAllAccountsResult.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<WebAccountProvider?> findSystemAccountProviderAsync(
      String webAccountProviderId) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<WebAccountProvider?>();
    final webAccountProviderIdHstring = convertToHString(webAccountProviderId);

    final hr = ptr.ref.vtable
            .elementAt(8)
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

  Future<WebAccountProvider?> findSystemAccountProviderWithAuthorityAsync(
      String webAccountProviderId, String authority) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<WebAccountProvider?>();
    final webAccountProviderIdHstring = convertToHString(webAccountProviderId);
    final authorityHstring = convertToHString(authority);

    final hr = ptr.ref.vtable
            .elementAt(9)
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

  Future<WebAccountProvider?>
      findSystemAccountProviderWithAuthorityForUserAsync(
          String webAccountProviderId, String authority, User user) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<WebAccountProvider?>();
    final webAccountProviderIdHstring = convertToHString(webAccountProviderId);
    final authorityHstring = convertToHString(authority);

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer,
                            IntPtr webAccountProviderId,
                            IntPtr authority,
                            Pointer<COMObject> user,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, int webAccountProviderId, int authority,
                    Pointer<COMObject> user, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        webAccountProviderIdHstring,
        authorityHstring,
        user.ptr.cast<Pointer<COMObject>>().value,
        retValuePtr);

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

  // IWebAuthenticationCoreManagerStatics methods
  late final _iWebAuthenticationCoreManagerStatics =
      IWebAuthenticationCoreManagerStatics.from(this);

  @override
  Future<WebTokenRequestResult?> getTokenSilentlyAsync(
          WebTokenRequest request) =>
      _iWebAuthenticationCoreManagerStatics.getTokenSilentlyAsync(request);

  @override
  Future<WebTokenRequestResult?> getTokenSilentlyWithWebAccountAsync(
          WebTokenRequest request, WebAccount webAccount) =>
      _iWebAuthenticationCoreManagerStatics.getTokenSilentlyWithWebAccountAsync(
          request, webAccount);

  @override
  Future<WebTokenRequestResult?> requestTokenAsync(WebTokenRequest request) =>
      _iWebAuthenticationCoreManagerStatics.requestTokenAsync(request);

  @override
  Future<WebTokenRequestResult?> requestTokenWithWebAccountAsync(
          WebTokenRequest request, WebAccount webAccount) =>
      _iWebAuthenticationCoreManagerStatics.requestTokenWithWebAccountAsync(
          request, webAccount);

  @override
  Future<WebAccount?> findAccountAsync(
          WebAccountProvider provider, String webAccountId) =>
      _iWebAuthenticationCoreManagerStatics.findAccountAsync(
          provider, webAccountId);

  @override
  Future<WebAccountProvider?> findAccountProviderAsync(
          String webAccountProviderId) =>
      _iWebAuthenticationCoreManagerStatics
          .findAccountProviderAsync(webAccountProviderId);

  @override
  Future<WebAccountProvider?> findAccountProviderWithAuthorityAsync(
          String webAccountProviderId, String authority) =>
      _iWebAuthenticationCoreManagerStatics
          .findAccountProviderWithAuthorityAsync(
              webAccountProviderId, authority);
}
