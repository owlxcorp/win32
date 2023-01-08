// iwebtokenrequestfactory.dart

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
import '../../../credentials/webaccountprovider.dart';
import 'enums.g.dart';
import 'webtokenrequest.dart';

/// @nodoc
const IID_IWebTokenRequestFactory = '{6cf2141c-0ff0-4c67-b84f-99ddbe4a72c9}';

/// {@category Interface}
/// {@category winrt}
class IWebTokenRequestFactory extends IInspectable {
  // vtable begins at 6, is 4 entries long.
  IWebTokenRequestFactory.fromRawPointer(super.ptr);

  factory IWebTokenRequestFactory.from(IInspectable interface) =>
      IWebTokenRequestFactory.fromRawPointer(
          interface.toInterface(IID_IWebTokenRequestFactory));

  WebTokenRequest create(
      WebAccountProvider provider, String scope, String clientId) {
    final retValuePtr = calloc<COMObject>();

    final scopeHstring = convertToHString(scope);
    final clientIdHstring = convertToHString(clientId);

    final hr =
        ptr.ref.vtable
                .elementAt(6)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                Pointer,
                                Pointer<COMObject> provider,
                                IntPtr scope,
                                IntPtr clientId,
                                Pointer<COMObject>)>>>()
                .value
                .asFunction<
                    int Function(Pointer, Pointer<COMObject> provider,
                        int scope, int clientId, Pointer<COMObject>)>()(
            ptr.ref.lpVtbl,
            provider.ptr.cast<Pointer<COMObject>>().value,
            scopeHstring,
            clientIdHstring,
            retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(scopeHstring);
    WindowsDeleteString(clientIdHstring);

    return WebTokenRequest.fromRawPointer(retValuePtr);
  }

  WebTokenRequest createWithPromptType(WebAccountProvider provider,
      String scope, String clientId, WebTokenRequestPromptType promptType) {
    final retValuePtr = calloc<COMObject>();

    final scopeHstring = convertToHString(scope);
    final clientIdHstring = convertToHString(clientId);

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer,
                            Pointer<COMObject> provider,
                            IntPtr scope,
                            IntPtr clientId,
                            Int32 promptType,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, Pointer<COMObject> provider, int scope,
                    int clientId, int promptType, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        provider.ptr.cast<Pointer<COMObject>>().value,
        scopeHstring,
        clientIdHstring,
        promptType.value,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(scopeHstring);
    WindowsDeleteString(clientIdHstring);

    return WebTokenRequest.fromRawPointer(retValuePtr);
  }

  WebTokenRequest createWithProvider(WebAccountProvider provider) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(8)
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

    return WebTokenRequest.fromRawPointer(retValuePtr);
  }

  WebTokenRequest createWithScope(WebAccountProvider provider, String scope) {
    final retValuePtr = calloc<COMObject>();

    final scopeHstring = convertToHString(scope);

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<COMObject> provider,
                            IntPtr scope, Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, Pointer<COMObject> provider, int scope,
                    Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        provider.ptr.cast<Pointer<COMObject>>().value,
        scopeHstring,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(scopeHstring);

    return WebTokenRequest.fromRawPointer(retValuePtr);
  }
}
