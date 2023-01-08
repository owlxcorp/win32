// webtokenrequestresult.dart

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
import '../../../../foundation/iasyncaction.dart';
import '../../../../internal/hstring_array.dart';
import 'enums.g.dart';
import 'iwebtokenrequestresult.dart';
import 'webprovidererror.dart';
import 'webtokenresponse.dart';

/// Represents the results of a web token request to an identity provider.
///
/// {@category Class}
/// {@category winrt}
class WebTokenRequestResult extends IInspectable
    implements IWebTokenRequestResult {
  WebTokenRequestResult.fromRawPointer(super.ptr);

  // IWebTokenRequestResult methods
  late final _iWebTokenRequestResult = IWebTokenRequestResult.from(this);

  @override
  List<WebTokenResponse> get responseData =>
      _iWebTokenRequestResult.responseData;

  @override
  WebTokenRequestStatus get responseStatus =>
      _iWebTokenRequestResult.responseStatus;

  @override
  WebProviderError get responseError => _iWebTokenRequestResult.responseError;

  @override
  Future<void> invalidateCacheAsync() =>
      _iWebTokenRequestResult.invalidateCacheAsync();
}
