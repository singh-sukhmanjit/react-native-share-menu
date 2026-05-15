//
//  ShareMenuManager.m
//  react-native-share-menu
//
//  Created by Gustavo Parreira on 26/07/2020.
//

#import "ShareMenuManager.h"
// https://github.com/Expensify/react-native-share-menu/issues/313#issuecomment-2074808401
#import <RNShareMenu/RNShareMenu-Swift.h>

#import <React/RCTLinkingManager.h>

@implementation ShareMenuManager

+ (BOOL)application:(UIApplication *)app
            openURL:(NSURL *)url
            options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options
{
    [ShareMenuMessenger shareWithApplication:app openUrl:url options:options];
    return [RCTLinkingManager application:app openURL:url options:options];
}

@end
