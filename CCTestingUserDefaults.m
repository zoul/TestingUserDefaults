#import "CCTestingUserDefaults.h"

@interface CCTestingUserDefaults ()
@property(strong) NSMutableDictionary *data;
@end

@implementation CCTestingUserDefaults
@synthesize data;

- (id) init
{
    self = [super init];
    [self setData:[NSMutableDictionary dictionary]];
    return self;
}

#pragma mark Writing

- (void) setObject: (id) value forKey: (NSString*) defaultName
{
    [data setObject:value forKey:defaultName];
}

- (void) setInteger: (NSInteger) value forKey: (NSString*) defaultName
{
    [data setObject:[NSNumber numberWithInteger:value] forKey:defaultName];
}

- (void) setBool: (BOOL) value forKey: (NSString*) defaultName
{
    [data setObject:[NSNumber numberWithBool:value] forKey:defaultName];
}

- (void) synchronize
{
    // no-op
}

#pragma mark Reading

- (id) objectForKey: (NSString*) defaultName
{
    return [data objectForKey:defaultName];
}

- (NSInteger) integerForKey: (NSString*) defaultName
{
    return [[data objectForKey:defaultName] integerValue];
}

- (BOOL) boolForKey: (NSString*) defaultName
{
    return [[data objectForKey:defaultName] boolValue];
}

@end

#pragma mark NSUserDefaults Convenience

@implementation NSUserDefaults (Testing)

+ (id) transientDefaults
{
    return [[CCTestingUserDefaults alloc] init];
}

@end