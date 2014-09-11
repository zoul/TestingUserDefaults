//
//  CCTestingUserDefaultsTests.m
//  TestingUserDefaults
//
//  Created by Hugo Tunius on 11/09/14.
//  Copyright (c) 2014 Tomáš Znamenáček. All rights reserved.
//

#import <XCTest/XCTest.h>

// Class under test
#import "CCTestingUserDefaults.h"

@interface CCTestingUserDefaultsTests : XCTestCase
@property (nonatomic, strong) CCTestingUserDefaults* defaults;
@end

@implementation CCTestingUserDefaultsTests
- (void)setUp
{
    [super setUp];
    self.defaults = [[CCTestingUserDefaults alloc] init];
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each
    // test method in the class.
    [super tearDown];
}

- (void)testObjectForKey
{
    NSString* string = @"String";
    [self.defaults setObject:string forKey:@"test"];
    XCTAssertEqualObjects([self.defaults objectForKey:@"test"], string);
}

- (void)testInteger
{
    [self.defaults setInteger:43 forKey:@"test"];
    XCTAssertEqual([self.defaults integerForKey:@"test"], 43);
}

- (void)testBool
{
    [self.defaults setBool:YES forKey:@"test"];
    XCTAssertEqual([self.defaults boolForKey:@"test"], YES);
}

- (void)testDouble
{
    [self.defaults setDouble:0.42 forKey:@"test"];
    XCTAssertEqualWithAccuracy([self.defaults doubleForKey:@"test"], 0.42, 0.01);
}

- (void)testFloat
{
    [self.defaults setFloat:0.42 forKey:@"test"];
    XCTAssertEqualWithAccuracy([self.defaults floatForKey:@"test"], 0.42, 0.01);
}

- (void)testAraryForKey
{
    [self.defaults setObject:@[] forKey:@"test"];
    XCTAssertEqualObjects([self.defaults arrayForKey:@"test"], @[]);

    [self.defaults setObject:@"not an array" forKey:@"test1"];
    XCTAssertNil([self.defaults arrayForKey:@"test1"]);
}

- (void)testDictionaryForKey
{
    [self.defaults setObject:@{} forKey:@"test"];
    XCTAssertEqualObjects([self.defaults dictionaryForKey:@"test"], @{});

    [self.defaults setObject:@"not a dictionary" forKey:@"test1"];
    XCTAssertNil([self.defaults dictionaryForKey:@"test1"]);
}

- (void)testStringArrayForKey
{
    [self.defaults setObject:@[] forKey:@"test"];
    XCTAssertEqualObjects([self.defaults stringArrayForKey:@"test"], @[]);

    [self.defaults setObject:@[ @"string" ] forKey:@"test1"];
    XCTAssertEqualObjects([self.defaults stringArrayForKey:@"test1"], @[ @"string" ]);

    [self.defaults setObject:@[ @"string", @10 ] forKey:@"test2"];
    XCTAssertNil([self.defaults stringArrayForKey:@"test2"]);
}

- (void)testRemoveObject
{
    NSString* obj = @"Object";
    [self.defaults setObject:obj forKey:@"test"];

    [self.defaults removeObjectForKey:@"test"];
    XCTAssertNil([self.defaults objectForKey:@"test"]);
}

@end
