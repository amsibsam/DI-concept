//
//  DI_TestTests.m
//  DI TestTests
//
//  Created by Rahardyan Bisma Setya Putra on 04/12/18.
//  Copyright © 2018 Rahardyan Bisma Setya Putra. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NetworkMock.h"
#import "KacangService.h"

@interface DI_TestTests : XCTestCase {
    NetworkMock *networkManager;
}

@end

@implementation DI_TestTests

- (void)setUp {
    [super setUp];
    networkManager = [NetworkMock new];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testGetKacang1 {
    networkManager.mockResponse = @"1 kacang";
    KacangService *kacangService = [[KacangService alloc] initWitkNetworkManager:networkManager];
    [kacangService getKacangWitCompletion:^(NSString * _Nullable response) {
        BOOL valid = [response isEqualToString:@"Poor"];
        XCTAssertTrue(valid);
    }];
}

- (void)testGetKacang2 {
    networkManager.mockResponse = @"2 kacang";
    KacangService *kacangService = [[KacangService alloc] initWitkNetworkManager:networkManager];
    [kacangService getKacangWitCompletion:^(NSString * _Nullable response) {
        BOOL valid = [response isEqualToString:@"Good"];
        XCTAssertTrue(valid);
    }];
}

- (void)testGetKacang3 {
    networkManager.mockResponse = @"3 kacang";
    KacangService *kacangService = [[KacangService alloc] initWitkNetworkManager:networkManager];
    [kacangService getKacangWitCompletion:^(NSString * _Nullable response) {
        BOOL valid = [response isEqualToString:@"Excelent"];
        XCTAssertTrue(valid);
    }];
}

- (void)testGetKacang4 {
    networkManager.mockResponse = @"4 kacang";
    KacangService *kacangService = [[KacangService alloc] initWitkNetworkManager:networkManager];
    [kacangService getKacangWitCompletion:^(NSString * _Nullable response) {
        BOOL valid = [response isEqualToString:@"Perfect"];
        XCTAssertTrue(valid);
    }];
}

- (void)testUnexpectedResponse {
    networkManager.mockResponse = @"awjelkwja";
    KacangService *kacangService = [[KacangService alloc] initWitkNetworkManager:networkManager];
    [kacangService getKacangWitCompletion:^(NSString * _Nullable response) {
        BOOL valid = [response isEqualToString:@"unexpected"];
        XCTAssertTrue(valid);
    }];
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
