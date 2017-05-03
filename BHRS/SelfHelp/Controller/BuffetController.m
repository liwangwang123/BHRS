//
//  BuffetController.m
//  BHRS
//
//  Created by 王力 on 2017/4/26.
//  Copyright © 2017年 王力. All rights reserved.
//

#import "BuffetController.h"
#import "BuffetView.h"
#import "WebViewController.h"
#import "MyPolicyViewController.h"

@interface BuffetController ()

@end

@implementation BuffetController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"自助服务";
    [self addBuffetView];
}

- (void)addBuffetView {
    BuffetView *buffet = [[BuffetView alloc] initWithFrame:self.view.bounds];
    buffet.myPolicy.tag = 1021;
    buffet.information.tag = 1022;
    buffet.informationBottom.tag = 1023;
    buffet.companyIntroduction.tag = 1024;
    [buffet.myPolicy addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [buffet.information addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [buffet.informationBottom addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [buffet.companyIntroduction addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:buffet];
}

- (void)btnClick:(id)sender {
    UIButton *btn = sender;
    NSInteger tag = btn.tag;
    switch (tag) {
        case 1021: {
            MyPolicyViewController *myPolicy = [[MyPolicyViewController alloc] initWithNibName:@"MyPolicyViewController" bundle:nil];
            [self.navigationController pushViewController:myPolicy animated:YES];
        }
            break;
        case 1022: {
            WebViewController *web = [WebViewController shareInstance];
            [web loadWebViewWithUrl:@"http://www.bohailife.net/xwzx/bhxw/index.shtml"];
            web.title = @"新闻资讯";
            [self.navigationController pushViewController:web animated:YES];
        }
            break;
        case 1023: {
            WebViewController *web = [WebViewController shareInstance];
            [web loadWebViewWithUrl:@"http://www.bohailife.net/xwzx/bhxw/index.shtml"];
            web.title = @"新闻资讯";
            [self.navigationController pushViewController:web animated:YES];
        }
            break;
        case 1024: {
            WebViewController *web = [WebViewController shareInstance];
            //            [web loadWebViewWithFileName:@"index1"];
            [web loadWebViewWithUrl:@"http://www.bohailife.net/mobile/about/index.jsp"];
            web.title = @"公司介绍";
            [self.navigationController pushViewController:web animated:YES];

        }
            break;
            
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
