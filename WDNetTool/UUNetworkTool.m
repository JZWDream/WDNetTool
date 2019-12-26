//
//  UUNetworkTool.m
//  UUNetwork
//
//  Created by wdgeeker on 2019/12/24.
//  Copyright © 2019 100uu. All rights reserved.
//

#import "UUNetworkTool.h"
#import "UURequestApi.h"

@implementation UUNetworkTool

+ (void)uu_GET:(NSString *)url parameter:(NSDictionary *)parameter success:(void (^)(id _Nonnull))success deny:(nonnull void (^)(id _Nonnull))deny failure:(nonnull void (^)(NSError * _Nonnull))failure {
    [self requestWithMethod:YTKRequestMethodGET url:url parameter:parameter success:^(id responseObject) {
        success(responseObject);
    } deny:^(id responseObject) {
        deny(responseObject);
    } failure:^(NSError *error) {
        failure(error);
    }];
}

+ (void)uu_POST:(NSString *)url parameter:(NSDictionary *)parameter success:(void (^)(id _Nonnull))success deny:(nonnull void (^)(id _Nonnull))deny failure:(nonnull void (^)(NSError * _Nonnull))failure {
    [self requestWithMethod:YTKRequestMethodPOST url:url parameter:parameter success:^(id responseObject) {
        success(responseObject);
    } deny:^(id responseObject) {
        deny(responseObject);
    } failure:^(NSError *error) {
        failure(error);
    }];
}

+ (void)requestWithMethod:(YTKRequestMethod)method url:(NSString *)url parameter:(NSDictionary *)parameter success:(void (^)(id responseObject))success deny:(void (^)(id responseObject))deny failure:(void (^)(NSError * error))failure {
    UURequestApi *requestApi = [[UURequestApi alloc] initWithMethod:method url:url parameter:parameter];
    [requestApi startWithCompletionBlockWithSuccess:^(__kindof YTKBaseRequest * _Nonnull request) {
        
        //返回数据NSData->NSDictionary
        id jsonDict = [NSJSONSerialization JSONObjectWithData:request.responseObject options:NSJSONReadingAllowFragments error:nil];
        if (jsonDict) {
            NSLog(@"请求成功:==%@", jsonDict);
            NSDictionary *responseObject = jsonDict;
            
            //error_code这个根据后台返回的统一格式进行修改
            //当然，也可以在这里把所有的error_code进行拦截判断，统一处理
            if ([responseObject[@"error_code"] integerValue] == 0) {
                success(responseObject);
            } else {
                deny(responseObject);
            }
        } else {
            NSString *responseStr = [[NSString alloc] initWithData:request.responseObject encoding:NSUTF8StringEncoding];
            NSLog(@"服务器返回格式有误:==%@", responseStr);
        }
        
        
    } failure:^(__kindof YTKBaseRequest * _Nonnull request) {
        NSLog(@"请求失败:==%@", request.error);
        failure(request.error);
    }];
}

@end
