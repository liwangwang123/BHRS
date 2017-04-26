//
//  WebViewController.m
//  BHRS
//
//  Created by 王力 on 2017/4/26.
//  Copyright © 2017年 王力. All rights reserved.
//

#import "WebViewController.h"
#import <WebKit/WebKit.h>

@interface WebViewController ()

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)loadWebViewWithUrl:(NSString *)urlString {
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
    WKWebView *webView = [[WKWebView alloc] initWithFrame:self.view.bounds configuration:[WKWebViewConfiguration new]];
    [self.view addSubview:webView];
    [webView loadRequest:request];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

static WebViewController *singleton = nil;

+ (instancetype)shareInstance {
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        singleton = [[WebViewController alloc] init];
    });
    return singleton;
}

//调用alloc方法时候,会回调
+ (id)allocWithZone:(struct _NSZone *)zone {
    if (singleton == nil) {
        static dispatch_once_t once;
        dispatch_once(&once, ^{
            singleton = [super allocWithZone:zone];
        });
    }
    return singleton;
}
//copy的时候调用
- (id)copyWithZone:(NSZone *)zone {
    return singleton;
}

+ (id)copyWithZone:(struct _NSZone *)zone{
    return  singleton;
}
+ (id)mutableCopyWithZone:(struct _NSZone *)zone{
    return singleton;
}
- (id)mutableCopyWithZone:(NSZone *)zone{
    return singleton;
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
