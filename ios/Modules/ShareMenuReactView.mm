#import <RNShareMenuSpec/RNShareMenuSpec.h>
#import <RNShareMenu/RNShareMenu-Swift.h>

@interface ShareMenuReactView (TurboModule) <NativeShareMenuReactViewSpec>
@end

@implementation ShareMenuReactView (TurboModule)

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:(const facebook::react::ObjCTurboModule::InitParams &)params {
    return std::make_shared<facebook::react::NativeShareMenuReactViewSpecJSI>(params);
}

@end
