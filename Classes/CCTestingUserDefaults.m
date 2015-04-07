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
    data[defaultName] = value;
}

- (void)setInteger:(NSInteger)value forKey:(NSString*)defaultName
{
    data[defaultName] = @(value);
}

- (void)setFloat:(float)value forKey:(NSString*)defaultName
{
    data[defaultName] = @(value);
}

- (void)setBool:(BOOL)value forKey:(NSString*)defaultName
{
    data[defaultName] = @(value);
}

- (void)setDouble:(double)value forKey:(NSString*)defaultName
{
    data[defaultName] = @(value);
}

- (void)setURL:(NSURL*)url forKey:(NSString*)defaultName
{
    data[defaultName] = url;
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
    return data[defaultName];
}

- (NSString*)stringForKey:(NSString*)defaultName
{
    id stringObj = data[defaultName];

    if (![stringObj isKindOfClass:[NSString class]]) {
        return nil;
    }

    return stringObj;
}
- (NSArray*)arrayForKey:(NSString*)defaultName
{
    id arrayObj = data[defaultName];

    if (![arrayObj isKindOfClass:[NSArray class]]) {
        return nil;
    }

    return arrayObj;
}

- (NSDictionary*)dictionaryForKey:(NSString*)defaultName
{
    id dictionaryObj = data[defaultName];

    if (![dictionaryObj isKindOfClass:[NSDictionary class]]) {
        return nil;
    }

    return dictionaryObj;
}

- (NSData*)dataForKey:(NSString*)defaultName
{
    id dataObj = data[defaultName];

    if (![dataObj isKindOfClass:[NSData class]]) {
        return nil;
    }

    return dataObj;
}

- (NSArray*)stringArrayForKey:(NSString*)defaultName
{
    NSArray* arrayObject = [self arrayForKey:defaultName];

    if (nil == arrayObject) {
        return nil;
    }

    for (id obj in arrayObject) {
        if (![obj isKindOfClass:[NSString class]]) {
            return nil;
        }
    }

    return arrayObject;
}

- (NSInteger)integerForKey:(NSString*)defaultName
{
    return [data[defaultName] integerValue];
}

- (float)floatForKey:(NSString*)defaultName
{
    return [data[defaultName] floatValue];
}

- (double)doubleForKey:(NSString*)defaultName
{
    return [data[defaultName] doubleValue];
}

- (BOOL)boolForKey:(NSString*)defaultName
{
    return [data[defaultName] boolValue];
}

@end

#pragma mark NSUserDefaults Convenience

@implementation NSUserDefaults (Testing)

+ (NSUserDefaults*)transientDefaults
{
    return (id)[[CCTestingUserDefaults alloc] init];
}

@end