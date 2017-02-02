//
//  BeeNetworkManager.m
//  Bee
//
//  Created by steam on 2017/2/2.
//  Copyright © 2017年 steam. All rights reserved.
//

#import "BeeNetworkManager.h"
#import <AFNetworking/AFNetworking.h>

static BeeNetworkManager * _Manager = nil;

@interface BeeNetworkManager ()
@property (nonatomic, strong)   AFHTTPSessionManager * afHTTPSessionManager;
@end

@implementation BeeNetworkManager

#pragma mark -- 创建单例
+(instancetype)sharInstance{
    
    @synchronized (self) {
        if (!_Manager) {
            _Manager = [[self alloc] init];
        }
    }
    
    return _Manager;
}



- (instancetype)init
{
    self = [super init];
    if (self) {
        self = [super init];
        self.afHTTPSessionManager = [AFHTTPSessionManager manager];
        self.afHTTPSessionManager.requestSerializer = [AFHTTPRequestSerializer serializer];
        self.afHTTPSessionManager.responseSerializer = [AFHTTPResponseSerializer serializer];

    }
    return self;
}

#pragma http 请求接口
/**
 *      get
 */
- (void)getJSONWithUrl:(NSString *)urlStr parameters:(id)parameters success:(void (^)(id responseObject))success fail:(void (^) ( NSError * error))fail
{
    [self.afHTTPSessionManager GET:urlStr parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if (success) {
            success(responseObject);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (fail) {
            fail(error);
        }
    }];
}

- (void)postJSONWithUrl:(NSString *)urlStr parameters:(id)parameters success:(void (^)(id responseObject))success fail:(void (^)(NSError * error))fail
{
    [self.afHTTPSessionManager POST:urlStr parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if (success) {
            success(responseObject);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (fail) {
            fail(error);
        }
    }];
}



@end
