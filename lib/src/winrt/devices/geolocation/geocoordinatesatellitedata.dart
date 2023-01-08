// geocoordinatesatellitedata.dart

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
import '../../foundation/ireference.dart';
import '../../internal/hstring_array.dart';
import 'igeocoordinatesatellitedata.dart';

/// Provides additional information about a Geocoordinate. This information
/// is only applicable to position estimates obtained using satellite
/// signals.
///
/// {@category Class}
/// {@category winrt}
class GeocoordinateSatelliteData extends IInspectable
    implements IGeocoordinateSatelliteData {
  GeocoordinateSatelliteData.fromRawPointer(super.ptr);

  // IGeocoordinateSatelliteData methods
  late final _iGeocoordinateSatelliteData =
      IGeocoordinateSatelliteData.from(this);

  @override
  double? get positionDilutionOfPrecision =>
      _iGeocoordinateSatelliteData.positionDilutionOfPrecision;

  @override
  double? get horizontalDilutionOfPrecision =>
      _iGeocoordinateSatelliteData.horizontalDilutionOfPrecision;

  @override
  double? get verticalDilutionOfPrecision =>
      _iGeocoordinateSatelliteData.verticalDilutionOfPrecision;
}
