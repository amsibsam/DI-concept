//
//  NetworkMock.m
//  DI TestTests
//
//  Created by Rahardyan Bisma Setya Putra on 04/12/18.
//  Copyright © 2018 Rahardyan Bisma Setya Putra. All rights reserved.
//

#import "NetworkMock.h"

@implementation NetworkMock
- (void)doNetworkRequestWithCompletion:(void (^)(NSString * _Nullable))completion {
    completion(_mockResponse);
}
@end
