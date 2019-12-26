//
//  UURequestApi.h
//  UUCommonKit
//
//  Created by wdgeeker on 2019/12/24.
//  Copyright © 2019 100uu. All rights reserved.
//

#import <YTKNetwork.h>

NS_ASSUME_NONNULL_BEGIN

@interface UURequestApi : YTKRequest

- (instancetype)initWithMethod:(YTKRequestMethod)method url:(NSString *)url parameter:(NSDictionary * __nullable)parameter;

@end

NS_ASSUME_NONNULL_END
