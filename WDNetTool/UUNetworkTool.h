//
//  UUNetworkTool.h
//  UUNetwork
//
//  Created by wdgeeker on 2019/12/24.
//  Copyright © 2019 100uu. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface UUNetworkTool : NSObject

/// GET请求
/// @param url 请求URL
/// @param parameter 请求参数
/// @param success 请求成功回调
/// @param deny 请求错误回调，根据具体错误码做进一步处理
/// @param failure 请求失败的回调
+ (void)uu_GET:(NSString *)url parameter:(NSDictionary *)parameter success:(void (^)(id responseObject))success deny:(void (^)(id responseObject))deny failure:(void(^)(NSError * error))failure;

/// POST请求
/// @param url 请求URL
/// @param parameter 请求参数
/// @param success 请求成功回调
/// @param deny 请求错误回调，根据具体错误码做进一步处理
/// @param failure 请求失败的回调
+ (void)uu_POST:(NSString *)url parameter:(NSDictionary *)parameter success:(void (^)(id responseObject))success deny:(void (^)(id responseObject))deny failure:(void(^)(NSError * error))failure;

@end

NS_ASSUME_NONNULL_END
