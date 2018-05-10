@import Foundation;

NS_ASSUME_NONNULL_BEGIN

@interface CCTestingUserDefaults : NSObject
- (void)setObject:(id)value forKey:(NSString*)defaultName;
- (void)setInteger:(NSInteger)value forKey:(NSString*)defaultName;
- (void)setFloat:(float)value forKey:(NSString*)defaultName;
- (void)setBool:(BOOL)value forKey:(NSString*)defaultName;
- (void)setDouble:(double)value forKey:(NSString*)defaultName;
- (void)setURL:(NSURL*)url forKey:(NSString*)defaultName;

- (nullable id)objectForKey:(NSString*)defaultName;
- (nullable NSString*)stringForKey:(NSString*)defaultName;
- (nullable NSArray*)arrayForKey:(NSString*)defaultName;
- (nullable NSDictionary*)dictionaryForKey:(NSString*)defaultName;
- (nullable NSData*)dataForKey:(NSString*)defaultName;
- (nullable NSArray*)stringArrayForKey:(NSString*)defaultName;
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
NS_ASSUME_NONNULL_END
