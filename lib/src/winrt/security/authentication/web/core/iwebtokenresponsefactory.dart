// iwebtokenresponsefactory.dart

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
import 'webprovidererror.dart';
import 'webtokenresponse.dart';

/// @nodoc
const IID_IWebTokenResponseFactory = '{ab6bf7f8-5450-4ef6-97f7-052b0431c0f0}';

/// {@category Interface}
/// {@category winrt}
class IWebTokenResponseFactory extends IInspectable {
  // vtable begins at 6, is 3 entries long.
  IWebTokenResponseFactory.fromRawPointer(super.ptr);

  factory IWebTokenResponseFactory.from(IInspectable interface) =>
      IWebTokenResponseFactory.fromRawPointer(
          interface.toInterface(IID_IWebTokenResponseFactory));

  WebTokenResponse createWithToken(String token) {
    final retValuePtr = calloc<COMObject>();
    final tokenHstring = convertToHString(token);

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer, IntPtr token, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(Pointer, int token, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, tokenHstring, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(tokenHstring);

    return WebTokenResponse.fromRawPointer(retValuePtr);
  }

  WebTokenResponse createWithTokenAndAccount(
      String token, WebAccount webAccount) {
    final retValuePtr = calloc<COMObject>();
    final tokenHstring = convertToHString(token);

    final hr =
        ptr.ref.vtable
                .elementAt(7)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                Pointer,
                                IntPtr token,
                                Pointer<COMObject> webAccount,
                                Pointer<COMObject>)>>>()
                .value
                .asFunction<
                    int Function(Pointer, int token,
                        Pointer<COMObject> webAccount, Pointer<COMObject>)>()(
            ptr.ref.lpVtbl,
            tokenHstring,
            webAccount.ptr.cast<Pointer<COMObject>>().value,
            retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(tokenHstring);

    return WebTokenResponse.fromRawPointer(retValuePtr);
  }

  WebTokenResponse createWithTokenAccountAndError(
      String token, WebAccount webAccount, WebProviderError error) {
    final retValuePtr = calloc<COMObject>();
    final tokenHstring = convertToHString(token);

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer,
                            IntPtr token,
                            Pointer<COMObject> webAccount,
                            Pointer<COMObject> error,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, int token, Pointer<COMObject> webAccount,
                    Pointer<COMObject> error, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        tokenHstring,
        webAccount.ptr.cast<Pointer<COMObject>>().value,
        error.ptr.cast<Pointer<COMObject>>().value,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(tokenHstring);

    return WebTokenResponse.fromRawPointer(retValuePtr);
  }
}
