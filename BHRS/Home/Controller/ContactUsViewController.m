//
//  ContactUsViewController.m
//  BHRS
//
//  Created by 王力 on 2017/4/25.
//  Copyright © 2017年 王力. All rights reserved.
//

#import "ContactUsViewController.h"
#import "WebViewController.h"
#import "FeedbackViewController.h"

@interface ContactUsViewController ()

@end

@implementation ContactUsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"联系我们";
    
    
}

- (IBAction)telClick:(id)sender {
    NSMutableString * str=[[NSMutableString alloc] initWithFormat:@"telprompt://%@",@"4008667668"];
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:str]];
}
- (IBAction)webClick:(id)sender {
    WebViewController *web = [WebViewController shareInstance];
    [web loadWebViewWithUrl:@"http://www.bohailife.net/mobile/about/index.jsp"];
    web.title = @"公司官网";
    [self.navigationController pushViewController:web animated:YES];
}

- (IBAction)feedbackClick:(id)sender {
    self.hidesBottomBarWhenPushed = YES;
    FeedbackViewController *feed = [[FeedbackViewController alloc] init];
    [self.navigationController pushViewController:feed animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
