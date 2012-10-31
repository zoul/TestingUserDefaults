About
-----

This class is a simple `NSUserDefaults` replacement that can be used in tests.
It does not persist any changes, so that each test can start with precisely
controlled defaults environment.

    CCTestingUserDefaults *defaults = [[CCTestingUserDefaults alloc] init];
    // …set up defaults as needed…
    ClassThatUsesDefaults *tested = [[ClassThatUsesDefaults alloc] init];
    [tested setDefaults:(id)defaults];
    // …run tests…

So far the class only supports several of the `NSUserDefaults` methods, feel free
to add more and send me a pull request.
