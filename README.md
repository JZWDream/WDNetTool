# WDNetTool
基于YTKNetwork基础上的网络请求工具类

- 在APPdelegate里对YTKNetwork进行全局配置

``` objc
//YTKNetwork全局配置
    YTKNetworkConfig *config = [YTKNetworkConfig sharedConfig];
    config.baseUrl = @"";//配置网络请求的前缀
    config.cdnUrl = @"";//cdn的地址，一般用于图片上传
    
    YTKNetworkAgent *agent = [YTKNetworkAgent sharedAgent];
    //返回数据支持格式
    [agent setValue:[NSSet setWithObjects:@"application/json", @"text/plain", @"text/javascript", @"text/json",@"text/html", nil] forKeyPath:@"jsonResponseSerializer.acceptableContentTypes"];
```

- UURequestApi 请求的实体类

- UUNetworkTool 请求工具类