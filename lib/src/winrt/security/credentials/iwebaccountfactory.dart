// iwebaccountfactory.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../com/iinspectable.dart';
import '../../../combase.dart';
import '../../../exceptions.dart';
import '../../../macros.dart';
import '../../../types.dart';
import '../../../utils.dart';
import '../../../win32/api_ms_win_core_winrt_string_l1_1_0.g.dart';
import '../../../winrt_callbacks.dart';
import '../../../winrt_helpers.dart';
import '../../internal/hstring_array.dart';
import 'enums.g.dart';
import 'webaccount.dart';
import 'webaccountprovider.dart';

/// @nodoc
const IID_IWebAccountFactory = '{ac9afb39-1de9-4e92-b78f-0581a87f6e5c}';

/// {@category Interface}
/// {@category winrt}
class IWebAccountFactory extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IWebAccountFactory.fromRawPointer(super.ptr);

  factory IWebAccountFactory.from(IInspectable interface) =>
      IWebAccountFactory.fromRawPointer(
          interface.toInterface(IID_IWebAccountFactory));

  WebAccount createWebAccount(WebAccountProvider webAccountProvider,
      String userName, WebAccountState state) {
    final retValuePtr = calloc<COMObject>();

    final userNameHstring = convertToHString(userName);

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer,
                            Pointer<COMObject> webAccountProvider,
                            IntPtr userName,
                            Int32 state,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, Pointer<COMObject> webAccountProvider,
                    int userName, int state, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        webAccountProvider.ptr.cast<Pointer<COMObject>>().value,
        userNameHstring,
        state.value,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(userNameHstring);

    return WebAccount.fromRawPointer(retValuePtr);
  }
}
