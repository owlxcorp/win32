// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Retrieve geolocation coordinates via WinRT APIs

import 'package:win32/src/winrt/security/authentication/web/core/enums.g.dart';
import 'package:win32/winrt.dart';

void main() async {

    final String AppSpecificProviderId = "myproviderid";
    final String AppSpecificProviderName = "App specific provider";

    final String DefaultProviderId = "https://login.windows.local";

    final String MicrosoftProviderId = "https://login.microsoft.com";
    final String MicrosoftAccountAuthority = "consumers";
    final String AzureActiveDirectoryAuthority = "organizations";

    final String clientId = "ddf0ab60-a35a-41b3-8647-ec6f89fb0576";
     final String scopes =
        "https://api.owlx.com/OwlX.ReadWrite.All";
      
    final provider = await WebAuthenticationCoreManager.findAccountProviderAsync(DefaultProviderId);

    // or be more specific: 
    //    final provider = await WebAuthenticationCoreManager.findAccountProviderWithAuthorityAsync(MicrosoftProviderId, AzureActiveDirectoryAuthority);

    print("Provider: ${provider?.displayName}, isSystemProvider: ${provider?.isSystemProvider}");

    final accounts = await WebAuthenticationCoreManager.findAllAccountsWithClientIdAsync(provider!, clientId);
    
    if(accounts == null) {
      return;
    }

    print(accounts.status);
    print(accounts.accounts.length);

    if(accounts.status != FindAllWebAccountsStatus.success){
        print(accounts.providerError.errorCode);
        print(accounts.providerError.errorMessage);
    }

    for(final account in accounts.accounts)
    {
      print(account.webAccountProvider.displayName);
      print(account.userName);
      print(account.state);

      for(final property in account.properties.entries) {
        print("${property.key}: ${property.value}");
      }
    }
  
    if(provider.authority != AzureActiveDirectoryAuthority)
    {
      print("Not an AAD account");
      return;
    }    
    
    final webTokenRequest = WebTokenRequest.create(provider, scopes, clientId);

    // must on a thread with a Window so we can't do this interactive request here: 
    //    final webTokenResponse = await WebAuthenticationCoreManager.requestTokenAsync(webTokenRequest);
    // instead we will do a silent request

    final webTokenResponse = await WebAuthenticationCoreManager.getTokenSilentlyAsync(webTokenRequest);

    if(webTokenResponse == null) {
      return;
    }

    print(webTokenResponse.responseStatus);

    if(webTokenResponse.responseStatus != WebTokenRequestStatus.success){
      print(webTokenResponse.responseError.errorCode);
      print(webTokenResponse.responseError.errorMessage);
    }
    else {
      for(final data in webTokenResponse.responseData){

        print("token: ${data.token}");

        // for(final property in data.properties.toMap().entries) {
        //   print("${property.key}: ${property.value}");
        // }
      }
    }
}
