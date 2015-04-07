@import Foundation;

@interface CCTestingUserDefaults : NSObject

- (void)setObject:(id)value forKey:(NSString*)defaultName;
- (void)setInteger:(NSInteger)value forKey:(NSString*)defaultName;
- (void)setFloat:(float)value forKey:(NSString*)defaultName;
- (void)setBool:(BOOL)value forKey:(NSString*)defaultName;
- (void)setDouble:(double)value forKey:(NSString*)defaultName;
- (void)setURL:(NSURL*)url forKey:(NSString*)defaultName;

- (id)objectForKey:(NSString*)defaultName;
- (NSString*)stringForKey:(NSString*)defaultName;
- (NSArray*)arrayForKey:(NSString*)defaultName;
- (NSDictionary*)dictionaryForKey:(NSString*)defaultName;
- (NSData*)dataForKey:(NSString*)defaultName;
- (NSArray*)stringArrayForKey:(NSString*)defaultName;
- (NSInteger)integerForKey:(NSString*)defaultName;
- (float)floatForKey:(NSString*)defaultName;
- (double)doubleForKey:(NSString*)defaultName;
- (BOOL)boolForKey:(NSString*)defaultName;

- (void)removeObjectForKey:(NSString*)defaultName;

- (void)synchronize;

@end

@interface NSUserDefaults (Testing)

+ (NSUserDefaults*)transientDefaults;

@end