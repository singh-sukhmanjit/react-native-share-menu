#import <React/RCTBridgeModule.h>

#import <RNShareMenuSpec/RNShareMenuSpec.h>

@interface ShareMenuReactView : NSObject <NativeShareMenuReactViewSpec>
@end

@implementation ShareMenuReactView (TurboModule)

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:(const facebook::react::ObjCTurboModule::InitParams &)params {
    return std::make_shared<facebook::react::NativeShareMenuReactViewSpecJSI>(params);
}

@end

@interface RCT_EXTERN_MODULE(ShareMenuReactView, NSObject)

RCT_EXTERN_METHOD(data:(RCTPromiseResolveBlock)resolver reject:(RCTPromiseRejectBlock)rejecter)

RCT_EXTERN_METHOD(dismissExtension:(NSString *)error)

RCT_EXTERN_METHOD(openApp)

RCT_EXTERN_METHOD(continueInApp:(NSDictionary *)extraData)

@end
