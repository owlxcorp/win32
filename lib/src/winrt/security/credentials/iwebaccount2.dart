// iwebaccount2.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:async';
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
import '../../foundation/collections/imapview.dart';
import '../../foundation/iasyncaction.dart';
import '../../foundation/iasyncoperation.dart';
import '../../internal/async_helpers.dart';
import '../../internal/hstring_array.dart';
import '../../storage/streams/irandomaccessstream.dart';
import 'enums.g.dart';
import 'iwebaccount.dart';
import 'webaccountprovider.dart';

/// @nodoc
const IID_IWebAccount2 = '{7b56d6f8-990b-4eb5-94a7-5621f3a8b824}';

/// {@category Interface}
/// {@category winrt}
class IWebAccount2 extends IInspectable implements IWebAccount {
  // vtable begins at 6, is 5 entries long.
  IWebAccount2.fromRawPointer(super.ptr);

  factory IWebAccount2.from(IInspectable interface) =>
      IWebAccount2.fromRawPointer(interface.toInterface(IID_IWebAccount2));

  String get id {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<IntPtr>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<IntPtr>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.toDartString();
      return retValue;
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  Map<String, String> get properties {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(7)
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

    final mapView = IMapView<String, String>.fromRawPointer(retValuePtr,
        iterableIid: '{e9bdaaf0-cbf6-5c72-be90-29cbf3a1319b}');
    final map = mapView.toMap();
    mapView.release();

    return map;
  }

  Future<IRandomAccessStream?> getPictureAsync(
      WebAccountPictureSize desizedSize) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<IRandomAccessStream?>();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer, Int32 desizedSize, Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, int desizedSize, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, desizedSize.value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IRandomAccessStream?>.fromRawPointer(
        retValuePtr,
        creator: IRandomAccessStream.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<void> signOutAsync() {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<void>();

    final hr = ptr.ref.vtable
            .elementAt(9)
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

    final asyncAction = IAsyncAction.fromRawPointer(retValuePtr);
    completeAsyncAction(asyncAction, completer);

    return completer.future;
  }

  Future<void> signOutWithClientIdAsync(String clientId) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<void>();
    final clientIdHstring = convertToHString(clientId);

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer, IntPtr clientId, Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, int clientId, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, clientIdHstring, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(clientIdHstring);

    final asyncAction = IAsyncAction.fromRawPointer(retValuePtr);
    completeAsyncAction(asyncAction, completer);

    return completer.future;
  }

  // IWebAccount methods
  late final _iWebAccount = IWebAccount.from(this);

  @override
  WebAccountProvider get webAccountProvider => _iWebAccount.webAccountProvider;

  @override
  String get userName => _iWebAccount.userName;

  @override
  WebAccountState get state => _iWebAccount.state;
}
