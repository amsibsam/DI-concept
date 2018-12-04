//
//  KacangService.m
//  DI Test
//
//  Created by Rahardyan Bisma Setya Putra on 04/12/18.
//  Copyright © 2018 Rahardyan Bisma Setya Putra. All rights reserved.
//

#import "KacangService.h"

static id<Network> networkInternal;

@implementation KacangService
- (instancetype)initWitkNetworkManager:(id<Network>)networkManager {
    self = [super init];
    if (self) {
        networkInternal = networkManager;
    }
    
    return self;
}

+ (void)setNetworkManager:(id<Network>)networkManager {
    networkInternal = networkManager;
}

+ (id<Network>)networkManager {
    return networkInternal;
}



- (void)getKacangWitCompletion:(void (^)(NSString * _Nullable))completion {
    [networkInternal doNetworkRequestWithCompletion:^(NSString * _Nullable response) {
        if ([response isEqualToString:@"1 kacang"]) {
            completion(@"Poor");
            return;
        }
        
        if ([response isEqualToString:@"2 kacang"]) {
            completion(@"Good");
            return;
        }
        
        if ([response isEqualToString:@"3 kacang"]) {
            completion(@"Excelent");
            return;
        }
        
        if ([response isEqualToString:@"4 kacang"]) {
            completion(@"Perfect");
            return;
        }
        
        completion(@"unexpected");
    }];
}
@end
