#import "SEGCrittercismIntegrationFactory.h"
#import "SEGCrittercismIntegration.h"


@implementation SEGCrittercismIntegrationFactory

+ (id)instance
{
    static dispatch_once_t once;
    static SEGCrittercismIntegration *sharedInstance;
    dispatch_once(&once, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

- (id)init
{
    self = [super init];
    return self;
}

- (id<SEGIntegration>)createWithSettings:(NSDictionary *)settings forAnalytics:(SEGAnalytics *)analytics
{
    return [[SEGCrittercismIntegration alloc] initWithSettings:settings];
}

- (NSString *)key
{
    return @"Crittercism";
}

@end
