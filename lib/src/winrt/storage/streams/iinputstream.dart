// iinputstream.dart

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
// import '../../foundation/iasyncoperationwithprogress.dart';
import '../../foundation/iclosable.dart';
import '../../internal/hstring_array.dart';
// import 'enums.g.dart';
// import 'ibuffer.dart';

/// @nodoc
const IID_IInputStream = '{905a0fe2-bc53-11df-8c49-001e4fc686da}';

/// {@category Interface}
/// {@category winrt}
class IInputStream extends IInspectable implements IClosable {
  // vtable begins at 6, is 1 entries long.
  IInputStream.fromRawPointer(super.ptr);

  factory IInputStream.from(IInspectable interface) =>
      IInputStream.fromRawPointer(interface.toInterface(IID_IInputStream));

  // Pointer<COMObject> readAsync(
  //     IBuffer? buffer, int count, InputStreamOptions options) {
  //   final retValuePtr = calloc<COMObject>();

  //   final hr =
  //       ptr.ref.vtable
  //               .elementAt(6)
  //               .cast<
  //                   Pointer<
  //                       NativeFunction<
  //                           HRESULT Function(
  //                               Pointer,
  //                               Pointer<COMObject> buffer,
  //                               Uint32 count,
  //                               Uint32 options,
  //                               Pointer<COMObject>)>>>()
  //               .value
  //               .asFunction<
  //                   int Function(Pointer, Pointer<COMObject> buffer, int count,
  //                       int options, Pointer<COMObject>)>()(
  //           ptr.ref.lpVtbl,
  //           buffer == null
  //               ? nullptr
  //               : buffer.ptr.cast<Pointer<COMObject>>().value,
  //           count,
  //           options.value,
  //           retValuePtr);

  //   if (FAILED(hr)) {
  //     free(retValuePtr);
  //     throw WindowsException(hr);
  //   }

  //   return retValuePtr;
  // }

  // IClosable methods
  late final _iClosable = IClosable.from(this);

  @override
  void close() => _iClosable.close();
}
