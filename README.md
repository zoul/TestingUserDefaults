[![Build Status](https://travis-ci.org/zoul/TestingUserDefaults.svg?branch=master)](https://travis-ci.org/zoul/TestingUserDefaults)

This class is a simple `NSUserDefaults` replacement that can be used in tests. It does not persist any changes, so that each test can start with precisely controlled defaults environment.

```objective-c
NSUserDefaults *defaults = [NSUserDefaults transientDefaults];
// Write some initial values
[defaults setObject:… forKey:…];
[defaults setInteger:… forKey:…];
[testedClass setUserDefaults:defaults];
// Verify values written by the tested class
XCTAssertSomething([defaults integerForKey:…], …);
```

If there’s an accessor that’s not implemented (or implemented correctly), pull requests are welcome.
