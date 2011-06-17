#import "TestingUserDefaults.h"

@interface TestingUserDefaults ()
@property(retain) NSMutableDictionary *data;
@end

@implementation TestingUserDefaults
@synthesize data;

+ (id) freshDefaults
{
    return [[[self alloc] init] autorelease];
}

- (id) init
{
    [super init];
    data = [[NSMutableDictionary alloc] init];
    return self;
}

- (void) dealloc
{
    [data release];
    [super dealloc];
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

- (void) synchronize {
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
