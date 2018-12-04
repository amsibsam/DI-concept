//
//  IAPDanaKit.m
//  DI Test
//
//  Created by Rahardyan Bisma Setya Putra on 04/12/18.
//  Copyright © 2018 Rahardyan Bisma Setya Putra. All rights reserved.
//

#import "SnackKit.h"
#import "KacangService.h"

@implementation SnackKit
+ (instancetype)shared {
    static SnackKit *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [SnackKit new];
    });
    
    return instance;
}

- (void)requestKacangWithCompletion:(void (^)(NSString * _Nullable))completion {
    NetworkManager *networkManager = [NetworkManager new];
    KacangService *kacangService = [[KacangService alloc] initWitkNetworkManager:networkManager];
    [kacangService getKacangWitCompletion:^(NSString * _Nullable response) {
        completion(response);
    }];
}

+ (void)requestKacang2WithCompletion:(void (^)(NSString * _Nullable))completion {
    NetworkManager *networkManager = [NetworkManager new];
    KacangService *kacangService = [[KacangService alloc] initWitkNetworkManager:networkManager];
    [kacangService getKacangWitCompletion:^(NSString * _Nullable response) {
        completion(response);
    }];
}


@end
