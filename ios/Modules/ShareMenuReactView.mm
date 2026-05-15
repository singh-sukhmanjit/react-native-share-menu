#import <React/RCTBridgeModule.h>

#import <RNShareMenuSpec/RNShareMenuSpec.h>
#import <RNShareMenu/RNShareMenu-Swift.h>

@interface ShareMenuReactView : NSObject
- (void)dismissExtension:(NSString *)error;
- (void)openApp;
- (void)continueInApp:(NSDictionary *)extraData;
- (void)data:(RCTPromiseResolveBlock)resolver reject:(RCTPromiseRejectBlock)rejecter;
@end

@interface ShareMenuReactView (TurboModule) <NativeShareMenuReactViewSpec>
@end

@implementation ShareMenuReactView (TurboModule)

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:(const facebook::react::ObjCTurboModule::InitParams &)params {
    return std::make_shared<facebook::react::NativeShareMenuReactViewSpecJSI>(params);
}

@end
