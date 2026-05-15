#import <React/RCTBridgeModule.h>
#import <React/RCTEventEmitter.h>

#import <RNShareMenuSpec/RNShareMenuSpec.h>

@interface RCT_EXTERN_MODULE(ShareMenu, RCTEventEmitter)

RCT_EXTERN_METHOD(getSharedText:(RCTResponseSenderBlock)callback)

@end

@interface ShareMenu (TurboModule) <NativeShareMenuSpec>
@end

@implementation ShareMenu (TurboModule)

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:(const facebook::react::ObjCTurboModule::InitParams &)params {
    return std::make_shared<facebook::react::NativeShareMenuSpecJSI>(params);
}

@end
