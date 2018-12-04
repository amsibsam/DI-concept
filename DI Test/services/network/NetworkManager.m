//
//  NetworkManager.m
//  DI Test
//
//  Created by Rahardyan Bisma Setya Putra on 04/12/18.
//  Copyright © 2018 Rahardyan Bisma Setya Putra. All rights reserved.
//

#import "NetworkManager.h"

@implementation NetworkManager
- (void)doNetworkRequestWithCompletion:(void (^)(NSString * _Nullable))completion {
    completion(@"4 kacang");
}

@end
