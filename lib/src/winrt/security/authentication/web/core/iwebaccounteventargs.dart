// iwebaccounteventargs.dart

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

/// @nodoc
const IID_IWebAccountEventArgs = '{6fb7037d-424e-44ec-977c-ef2415462a5a}';

/// {@category Interface}
/// {@category winrt}
class IWebAccountEventArgs extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IWebAccountEventArgs.fromRawPointer(super.ptr);

  factory IWebAccountEventArgs.from(IInspectable interface) =>
      IWebAccountEventArgs.fromRawPointer(
          interface.toInterface(IID_IWebAccountEventArgs));

  WebAccount get account {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(Pointer, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return WebAccount.fromRawPointer(retValuePtr);
  }
}
