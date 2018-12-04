//
//  KacangService.h
//  DI Test
//
//  Created by Rahardyan Bisma Setya Putra on 04/12/18.
//  Copyright © 2018 Rahardyan Bisma Setya Putra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Network.h"

@interface KacangService : NSObject
@property (class, strong, nonatomic, nullable) id<Network> networkManager;

- (instancetype _Nonnull)initWitkNetworkManager:(id<Network>)networkManager;
- (void)getKacangWitCompletion:(void (^_Nullable)(NSString *_Nullable response))completion;

@end
