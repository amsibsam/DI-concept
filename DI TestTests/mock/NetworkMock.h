//
//  NetworkMock.h
//  DI TestTests
//
//  Created by Rahardyan Bisma Setya Putra on 04/12/18.
//  Copyright © 2018 Rahardyan Bisma Setya Putra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Network.h"

@interface NetworkMock : NSObject<Network>
@property (nonatomic, copy)NSString *mockResponse;

@end
