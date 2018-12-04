//
//  IAPDanaKit.h
//  DI Test
//
//  Created by Rahardyan Bisma Setya Putra on 04/12/18.
//  Copyright © 2018 Rahardyan Bisma Setya Putra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NetworkManager.h"

@interface SnackKit : NSObject
@property (nonatomic, strong, readonly)NetworkManager *networkManager;
+ (instancetype)shared;
- (void)requestKacangWithCompletion:(void (^_Nullable)(NSString *_Nullable response))completion;
+ (void)requestKacang2WithCompletion:(void (^)(NSString * _Nullable))completion;
@end
