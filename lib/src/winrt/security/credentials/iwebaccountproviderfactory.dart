// iwebaccountproviderfactory.dart

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
import 'webaccountprovider.dart';

/// @nodoc
const IID_IWebAccountProviderFactory = '{1d767df1-e1e1-4b9a-a774-5c7c7e3bf371}';

/// {@category Interface}
/// {@category winrt}
class IWebAccountProviderFactory extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IWebAccountProviderFactory.fromRawPointer(super.ptr);

  factory IWebAccountProviderFactory.from(IInspectable interface) =>
      IWebAccountProviderFactory.fromRawPointer(
          interface.toInterface(IID_IWebAccountProviderFactory));

  WebAccountProvider createWebAccountProvider(
      String id, String displayName, Uri iconUri) {
    final retValuePtr = calloc<COMObject>();
    final idHstring = convertToHString(id);
    final displayNameHstring = convertToHString(displayName);
    final iconUriUri = winrt_uri.Uri.createUri(iconUri.toString());

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, IntPtr id, IntPtr displayName,
                            Pointer<COMObject> iconUri, Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, int id, int displayName,
                    Pointer<COMObject> iconUri, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        idHstring,
        displayNameHstring,
        iconUriUri.ptr.cast<Pointer<COMObject>>().value,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(idHstring);
    WindowsDeleteString(displayNameHstring);
    iconUriUri.release();

    return WebAccountProvider.fromRawPointer(retValuePtr);
  }
}
