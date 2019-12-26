//
//  ViewController.m
//  UUNetwork
//
//  Created by wdgeeker on 2019/12/24.
//  Copyright © 2019 100uu. All rights reserved.
//

#import "ViewController.h"
#import "UUNetworkTool.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 100, 100, 30);
    [btn setTitle:@"接口测试" forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(clickBtn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)clickBtn {
    [UUNetworkTool uu_POST:@"http://test.kuaishoudan.cn/api/list/finance/status" parameter:@{} success:^(id  _Nonnull responseObject) {
        NSLog(@"success");
        
    } deny:^(id  _Nonnull responseObject) {
        NSLog(@"deny");
    } failure:^(NSError * _Nonnull error) {
        NSLog(@"error");
    }];
}


@end
