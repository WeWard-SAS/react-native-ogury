#import "RNReactNativeOgury.h"
#import "IOSNativeToast.h"

@interface RNReactNativeOgury()

@property (nonatomic, retain) IOSNativeToast *toast;

@end

@implementation RNReactNativeOgury

- (instancetype)init {
    self = [super init];
    if (self) {
        self.toast = [[IOSNativeToast alloc] init];
    }
    return self;
}

+ (BOOL)requiresMainQueueSetup
{
    return YES;
}

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(show:(NSString *)text)
{
    [self.toast showToast:text];
}

@end
