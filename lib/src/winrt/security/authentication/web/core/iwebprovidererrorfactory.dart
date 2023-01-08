// iwebprovidererrorfactory.dart

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
import 'webprovidererror.dart';

/// @nodoc
const IID_IWebProviderErrorFactory = '{e3c40a2d-89ef-4e37-847f-a8b9d5a32910}';

/// {@category Interface}
/// {@category winrt}
class IWebProviderErrorFactory extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IWebProviderErrorFactory.fromRawPointer(super.ptr);

  factory IWebProviderErrorFactory.from(IInspectable interface) =>
      IWebProviderErrorFactory.fromRawPointer(
          interface.toInterface(IID_IWebProviderErrorFactory));

  WebProviderError create(int errorCode, String errorMessage) {
    final retValuePtr = calloc<COMObject>();

    final errorMessageHstring = convertToHString(errorMessage);

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Uint32 errorCode,
                            IntPtr errorMessage, Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, int errorCode, int errorMessage,
                    Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, errorCode, errorMessageHstring, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(errorMessageHstring);

    return WebProviderError.fromRawPointer(retValuePtr);
  }
}
