//
//  WebViewController.m
//  BHRS
//
//  Created by 王力 on 2017/4/26.
//  Copyright © 2017年 王力. All rights reserved.
//

#import "WebViewController.h"
#import <WebKit/WebKit.h>

@interface WebViewController () <WKNavigationDelegate, WKUIDelegate>

@property (nonatomic, strong) WKWebView *webView;

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)loadWebViewWithUrl:(NSString *)url {
    WKWebView *webView = [[WKWebView alloc] initWithFrame:self.view.bounds];
    [webView loadRequest:[[NSURLRequest alloc] initWithURL:[NSURL URLWithString:url]]];
    webView.UIDelegate = self;
    webView.navigationDelegate = self;
    [self.view addSubview:webView];
}

- (void)loadWebViewWithFileName:(NSString *)fileName {
    NSString *path = [[NSBundle mainBundle] bundlePath];
    NSURL *baseURL = [NSURL fileURLWithPath:path];
    NSString * htmlPath = [[NSBundle mainBundle] pathForResource:fileName
                                                          ofType:@"html"];
    NSString * htmlCont = [NSString stringWithContentsOfFile:htmlPath
                                                    encoding:NSUTF8StringEncoding
                                                       error:nil];
    self.webView = [[WKWebView alloc] initWithFrame:CGRectMake(0, 64, SCREEN_WIDTH, SCREEN_HEIGHT - 64)];
    [self.view addSubview:self.webView];
    [self.webView loadHTMLString:htmlCont baseURL:baseURL];
}

- (void)webView:(WKWebView *)webView didStartProvisionalNavigation:(WKNavigation *)navigation {
    NSLog(@"开始");
}

- (void)webView:(WKWebView *)webView didCommitNavigation:(WKNavigation *)navigation {
    NSLog(@"返回");
}

- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation {
    NSLog(@"结束");
}

- (void)webView:(WKWebView *)webView didFailNavigation:(WKNavigation *)navigation withError:(NSError *)error {
    NSLog(@"失败");
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



@end
