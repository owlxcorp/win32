// ifindallaccountsresult.dart

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
import '../../../../foundation/collections/ivectorview.dart';
import '../../../../internal/hstring_array.dart';
import '../../../credentials/webaccount.dart';
import 'enums.g.dart';
import 'webprovidererror.dart';

/// @nodoc
const IID_IFindAllAccountsResult = '{a5812b5d-b72e-420c-86ab-aac0d7b7261f}';

/// {@category Interface}
/// {@category winrt}
class IFindAllAccountsResult extends IInspectable {
  // vtable begins at 6, is 3 entries long.
  IFindAllAccountsResult.fromRawPointer(super.ptr);

  factory IFindAllAccountsResult.from(IInspectable interface) =>
      IFindAllAccountsResult.fromRawPointer(
          interface.toInterface(IID_IFindAllAccountsResult));

  List<WebAccount> get accounts {
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

    final vectorView = IVectorView<WebAccount>.fromRawPointer(retValuePtr,
        iterableIid: '{cb15d439-a910-542a-89ed-7cfe67848a83}',
        creator: WebAccount.fromRawPointer);
    final list = vectorView.toList();
    vectorView.release();

    return list;
  }

  FindAllWebAccountsStatus get status {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Int32>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Int32>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return FindAllWebAccountsStatus.from(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  WebProviderError? get providerError {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(8)
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

    if (retValuePtr.ref.lpVtbl == nullptr) {
      free(retValuePtr);
      return null;
    }

    return WebProviderError.fromRawPointer(retValuePtr);
  }
}
