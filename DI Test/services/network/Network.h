//
//  Network.h
//  DI Test
//
//  Created by Rahardyan Bisma Setya Putra on 04/12/18.
//  Copyright © 2018 Rahardyan Bisma Setya Putra. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Network <NSObject>
- (void)doNetworkRequestWithCompletion:(void (^)(NSString * _Nullable))completion;
@end
