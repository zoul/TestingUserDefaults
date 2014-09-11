#import "CCTestingUserDefaults.h"

@interface CCTestingUserDefaults ()
@property (strong) NSMutableDictionary* data;
@end

@implementation CCTestingUserDefaults
@synthesize data;

- (id)init
{
    self = [super init];
    if (nil == self) {
        return nil;
    }

    [self setData:[NSMutableDictionary dictionary]];
    return self;
}

#pragma mark Writing

- (void)setObject:(id)value forKey:(NSString*)defaultName
{
    [data setObject:value forKey:defaultName];
}

- (void)setInteger:(NSInteger)value forKey:(NSString*)defaultName
{
    [data setObject:@(value) forKey:defaultName];
}

- (void)setFloat:(float)value forKey:(NSString*)defaultName
{
    [data setObject:@(value) forKey:defaultName];
}

- (void)setBool:(BOOL)value forKey:(NSString*)defaultName
{
    [data setObject:@(value) forKey:defaultName];
}

- (void)setDouble:(double)value forKey:(NSString*)defaultName
{
    [data setObject:@(value) forKey:defaultName];
}

- (void)setURL:(NSURL*)url forKey:(NSString*)defaultName
{
    [data setObject:url forKey:defaultName];
}

- (void)removeObjectForKey:(NSString*)defaultName
{
    [data removeObjectForKey:defaultName];
}

- (void)synchronize
{
    // no-op
}

#pragma mark Reading

- (id)objectForKey:(NSString*)defaultName
{
    return [data objectForKey:defaultName];
}

- (NSInteger)integerForKey:(NSString*)defaultName
{
    return [[data objectForKey:defaultName] integerValue];
}

- (float)floatForKey:(NSString*)defaultName
{
    return [[data objectForKey:defaultName] floatValue];
}

- (double)doubleForKey:(NSString*)defaultName
{
    return [[data objectForKey:defaultName] doubleValue];
}

- (BOOL)boolForKey:(NSString*)defaultName
{
    return [[data objectForKey:defaultName] boolValue];
}

@end

#pragma mark NSUserDefaults Convenience

@implementation NSUserDefaults (Testing)

+ (id)transientDefaults
{
    return [[CCTestingUserDefaults alloc] init];
}

@end