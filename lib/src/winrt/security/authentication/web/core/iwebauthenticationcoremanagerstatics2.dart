// iwebauthenticationcoremanagerstatics2.dart

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
import 'iwebauthenticationcoremanagerstatics.dart';
import 'webtokenrequest.dart';
import 'webtokenrequestresult.dart';

/// @nodoc
const IID_IWebAuthenticationCoreManagerStatics2 =
    '{f584184a-8b57-4820-b6a4-70a5b6fcf44a}';

/// {@category Interface}
/// {@category winrt}
class IWebAuthenticationCoreManagerStatics2 extends IInspectable
    implements IWebAuthenticationCoreManagerStatics {
  // vtable begins at 6, is 1 entries long.
  IWebAuthenticationCoreManagerStatics2.fromRawPointer(super.ptr);

  factory IWebAuthenticationCoreManagerStatics2.from(IInspectable interface) =>
      IWebAuthenticationCoreManagerStatics2.fromRawPointer(
          interface.toInterface(IID_IWebAuthenticationCoreManagerStatics2));

  Future<WebAccountProvider?> findAccountProviderWithAuthorityForUserAsync(
      String webAccountProviderId, String authority, User user) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<WebAccountProvider?>();
    final webAccountProviderIdHstring = convertToHString(webAccountProviderId);
    final authorityHstring = convertToHString(authority);

    final hr = ptr.ref.vtable
            .elementAt(6)
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
