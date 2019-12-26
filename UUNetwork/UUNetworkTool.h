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

/// <#Description#>
/// @param url <#url description#>
/// @param parameter <#parameter description#>
/// @param success <#success description#>
/// @param deny <#deny description#>
/// @param failure <#failure description#>
+ (void)uu_GET:(NSString *)url parameter:(NSDictionary *)parameter success:(void (^)(id responseObject))success deny:(void (^)(id responseObject))deny failure:(void(^)(NSError * error))failure;

/// <#Description#>
/// @param url <#url description#>
/// @param parameter <#parameter description#>
/// @param success <#success description#>
/// @param deny <#deny description#>
/// @param failure <#failure description#>
+ (void)uu_POST:(NSString *)url parameter:(NSDictionary *)parameter success:(void (^)(id responseObject))success deny:(void (^)(id responseObject))deny failure:(void(^)(NSError * error))failure;

@end

NS_ASSUME_NONNULL_END
