//
//  BeeNetworkManager.h
//  Bee
//
//  Created by steam on 2017/2/2.
//  Copyright © 2017年 steam. All rights reserved.
//

#import <Foundation/Foundation.h>





@interface BeeNetworkManager : NSObject
/**
 *      单例对象
 */
+(instancetype)sharInstance;
/**
 *      get
 */
- (void)getJSONWithUrl:(NSString *)urlStr parameters:(id)parameters success:(void (^)(id responseObject))success fail:(void (^) ( NSError * error))fail;
/**
 *      post
 */

- (void)postJSONWithUrl:(NSString *)urlStr parameters:(id)parameters success:(void (^)(id responseObject))success fail:(void (^)(NSError * error))fail;
@end
