//
//  UURequestApi.m
//  UUCommonKit
//
//  Created by wdgeeker on 2019/12/24.
//  Copyright © 2019 100uu. All rights reserved.
//

#import "UURequestApi.h"

@implementation UURequestApi
{
    YTKRequestMethod _method;
    NSString       *_url;
    NSDictionary   *_parameter;
}

- (instancetype)initWithMethod:(YTKRequestMethod)method url:(NSString *)url parameter:(NSDictionary *)parameter {
    if (self = [super init]) {
        _method = method;
        _url = url;
        _parameter = parameter;
    }
    return self;
}

- (NSString *)requestUrl {
    return _url;
}

- (YTKRequestMethod)requestMethod {
    return _method;
}

- (id)requestArgument {
    
    return _parameter;
}

//返回的responseObjest是NSData类型，需要转成dictionary或者string，主要解决Error Domain=NSCocoaErrorDomain Code=3840问题
- (YTKResponseSerializerType)responseSerializerType {
    return YTKResponseSerializerTypeHTTP;
}

@end
