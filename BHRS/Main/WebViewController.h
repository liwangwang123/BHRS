//
//  WebViewController.h
//  BHRS
//
//  Created by 王力 on 2017/4/26.
//  Copyright © 2017年 王力. All rights reserved.
//

#import "MainViewController.h"

@interface WebViewController : MainViewController

+ (instancetype)shareInstance;
//加载本地html文件
- (void)loadWebViewWithFileName:(NSString *)fileName;
//加载网络html文件
- (void)loadWebViewWithUrl:(NSString *)url;
@end
