// webprovidererror.dart

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
import '../../../../foundation/collections/imap.dart';
import '../../../../internal/hstring_array.dart';
import 'iwebprovidererror.dart';
import 'iwebprovidererrorfactory.dart';

/// Represents an error from a web account provider.
///
/// {@category Class}
/// {@category winrt}
class WebProviderError extends IInspectable implements IWebProviderError {
  WebProviderError.fromRawPointer(super.ptr);

  static const _className =
      'Windows.Security.Authentication.Web.Core.WebProviderError';

  // IWebProviderErrorFactory methods
  static WebProviderError create(int errorCode, String errorMessage) {
    final activationFactoryPtr =
        CreateActivationFactory(_className, IID_IWebProviderErrorFactory);
    final object =
        IWebProviderErrorFactory.fromRawPointer(activationFactoryPtr);

    try {
      return object.create(errorCode, errorMessage);
    } finally {
      object.release();
    }
  }

  // IWebProviderError methods
  late final _iWebProviderError = IWebProviderError.from(this);

  @override
  int get errorCode => _iWebProviderError.errorCode;

  @override
  String get errorMessage => _iWebProviderError.errorMessage;

  @override
  IMap<String, String> get properties => _iWebProviderError.properties;
}
