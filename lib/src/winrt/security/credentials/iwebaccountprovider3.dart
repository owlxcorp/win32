// iwebaccountprovider3.dart

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
import '../../foundation/uri.dart' as winrt_uri;
import '../../internal/hstring_array.dart';
import '../../system/user.dart';
import 'iwebaccountprovider.dart';
import 'iwebaccountprovider2.dart';

/// @nodoc
const IID_IWebAccountProvider3 = '{da1c518b-970d-4d49-825c-f2706f8ca7fe}';

/// {@category Interface}
/// {@category winrt}
class IWebAccountProvider3 extends IInspectable
    implements IWebAccountProvider2, IWebAccountProvider {
  // vtable begins at 6, is 1 entries long.
  IWebAccountProvider3.fromRawPointer(super.ptr);

  factory IWebAccountProvider3.from(IInspectable interface) =>
      IWebAccountProvider3.fromRawPointer(
          interface.toInterface(IID_IWebAccountProvider3));

  User get user {
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

    return User.fromRawPointer(retValuePtr);
  }

  // IWebAccountProvider2 methods
  late final _iWebAccountProvider2 = IWebAccountProvider2.from(this);

  @override
  String get displayPurpose => _iWebAccountProvider2.displayPurpose;

  @override
  String get authority => _iWebAccountProvider2.authority;

  // IWebAccountProvider methods
  late final _iWebAccountProvider = IWebAccountProvider.from(this);

  @override
  String get id => _iWebAccountProvider.id;

  @override
  String get displayName => _iWebAccountProvider.displayName;

  @override
  Uri get iconUri => _iWebAccountProvider.iconUri;
}
