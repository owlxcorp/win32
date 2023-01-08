// webaccountprovider.dart

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
import 'iwebaccountprovider3.dart';
import 'iwebaccountprovider4.dart';
import 'iwebaccountproviderfactory.dart';

/// Represents a web account authentication provider.
///
/// {@category Class}
/// {@category winrt}
class WebAccountProvider extends IInspectable
    implements
        IWebAccountProvider,
        IWebAccountProvider2,
        IWebAccountProvider3,
        IWebAccountProvider4 {
  WebAccountProvider.fromRawPointer(super.ptr);

  static const _className = 'Windows.Security.Credentials.WebAccountProvider';

  // IWebAccountProviderFactory methods
  static WebAccountProvider createWebAccountProvider(
      String id, String displayName, Uri iconUri) {
    final activationFactoryPtr =
        CreateActivationFactory(_className, IID_IWebAccountProviderFactory);
    final object =
        IWebAccountProviderFactory.fromRawPointer(activationFactoryPtr);

    try {
      return object.createWebAccountProvider(id, displayName, iconUri);
    } finally {
      object.release();
    }
  }

  // IWebAccountProvider methods
  late final _iWebAccountProvider = IWebAccountProvider.from(this);

  @override
  String get id => _iWebAccountProvider.id;

  @override
  String get displayName => _iWebAccountProvider.displayName;

  @override
  Uri get iconUri => _iWebAccountProvider.iconUri;

  // IWebAccountProvider2 methods
  late final _iWebAccountProvider2 = IWebAccountProvider2.from(this);

  @override
  String get displayPurpose => _iWebAccountProvider2.displayPurpose;

  @override
  String get authority => _iWebAccountProvider2.authority;

  // IWebAccountProvider3 methods
  late final _iWebAccountProvider3 = IWebAccountProvider3.from(this);

  @override
  User get user => _iWebAccountProvider3.user;

  // IWebAccountProvider4 methods
  late final _iWebAccountProvider4 = IWebAccountProvider4.from(this);

  @override
  bool get isSystemProvider => _iWebAccountProvider4.isSystemProvider;
}
