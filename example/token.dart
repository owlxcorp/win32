import 'package:win32/src/winrt/security/authentication/web/core/webauthenticationcoremanager.dart';
import 'package:win32/src/winrt/security/authentication/web/core/webtokenrequest.dart';
import 'package:win32/winrt.dart';

void main() async {
  final provider = await WebAuthenticationCoreManager.findAccountProviderAsync(
      'https://login.windows.net');

  if (provider != null) {
    print(provider.id);
    print(provider.displayName);
    print(provider.displayPurpose);
    final request = WebTokenRequest.create(provider, '', '1234');

    final appWindow =
        GetConsoleWindow(); // Use GetShellWindow() for Flutter apps
    final result =
        await WebAuthenticationCoreManagerInterop.requestTokenForWindowAsync(
            appWindow, request);
    print(result?.responseStatus);
    print(result?.responseData);
  }
}
