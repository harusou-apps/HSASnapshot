//
//  HSASnapshotUITests.m
//  HSASnapshotUITests
//
//  Created by yokada3 on 2016/02/13.
//  Copyright © 2016年 harusou apps. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "HSASnapshotUITests-Swift.h"

@interface HSASnapshotUITests : XCTestCase

@end

@implementation HSASnapshotUITests

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [Snapshot setLanguage:app];
    [app launch];
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {

    XCUIApplication *app = [[XCUIApplication alloc] init];
    
    //Tap Navifation Rght (+) Button
    [[app.navigationBars[@"Master"].buttons elementBoundByIndex:2] tap];
    
    sleep(1);
    [Snapshot snapshot:@"master" waitForLoadingIndicator:YES];
    
    
    [[app.tables.cells elementBoundByIndex:0] tap];
    sleep(1);
    [Snapshot snapshot:@"detail" waitForLoadingIndicator:YES];

}

- (void)testExample2 {

    sleep(1);
    [Snapshot snapshot:@"master" waitForLoadingIndicator:YES];
    
}


@end
