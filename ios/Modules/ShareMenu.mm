#import <React/RCTEventEmitter.h>

#import <RNShareMenuSpec/RNShareMenuSpec.h>
#import <RNShareMenu/RNShareMenu-Swift.h>

@interface ShareMenu : RCTEventEmitter
- (void)getSharedText:(RCTResponseSenderBlock)callback;
@end

@interface ShareMenu (TurboModule) <NativeShareMenuSpec>
@end

@implementation ShareMenu (TurboModule)

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:(const facebook::react::ObjCTurboModule::InitParams &)params {
    return std::make_shared<facebook::react::NativeShareMenuSpecJSI>(params);
}

@end
