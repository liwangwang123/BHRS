//
//  HomeViewController.m
//  BHRS
//
//  Created by 王力 on 2017/4/25.
//  Copyright © 2017年 王力. All rights reserved.
//

#import "HomeViewController.h"
#import "TopList.h"
#import "XLsn0wLoop.h"
#import "HotProduct.h"
#import "ProductCenter.h"
#import "MyPolicyViewController.h"
#import "ContactUsViewController.h"
#import "WebViewController.h"

@interface HomeViewController ()<XLsn0wLoopDelegate>
@property (nonatomic, strong) XLsn0wLoop *loop;
@property (nonatomic, strong) UIScrollView *scrollView;
@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
    [self addScrollView];
    [self addLoop];
    [self addTopView];
    [self addHotProductView];
    [self addProductCenter];
}

- (void)addScrollView {
    _scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    [_scrollView setContentSize:CGSizeMake(SCREEN_WIDTH, 1000)];
    _scrollView.backgroundColor = COLOR_RGB(245, 245, 245);
    [self.view addSubview:_scrollView];
}

- (void)addLoop {
    self.loop = [[XLsn0wLoop alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 200)];
    [self.scrollView addSubview:self.loop];
    self.loop.xlsn0wDelegate = self;
    self.loop.time = 2;
    [self.loop setPageColor:[UIColor blueColor] andCurrentPageColor:[UIColor redColor]];
    //支持gif动态图
    self.loop.imageArray = @[[UIImage imageNamed:@"mm0.jpg"], [UIImage imageNamed:@"mm1.jpg"], [UIImage imageNamed:@"mm2.jpg"], [UIImage imageNamed:@"mm4.jpg"]];
}

- (void)addTopView {
    TopList *topView = [[TopList alloc] initWithFrame:CGRectMake(0, 210, SCREEN_WIDTH, 100)];
    topView.myInsurance.tag = 1010;
    topView.companyIntroduction.tag = 1011;
    topView.contactUs.tag = 1012;
    [topView.myInsurance addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [topView.companyIntroduction addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [topView.contactUs addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.scrollView addSubview:topView];
}

- (void)addHotProductView {
    HotProduct *hot = [[HotProduct alloc] initWithFrame:CGRectMake(0, 320, SCREEN_WIDTH, 300)];
    hot.button1.tag = 1013;
    hot.button2.tag = 1014;
    hot.button3.tag = 1015;
    [self.scrollView addSubview:hot];
}

- (void)addProductCenter {
    ProductCenter *center = [[ProductCenter alloc] initWithFrame:CGRectMake(0, 640, SCREEN_WIDTH, 300)];
    center.button1.tag = 1016;
    center.button2.tag = 1017;
    center.button3.tag = 1018;
    center.button4.tag = 1019;
    center.centerBtn.tag = 1020;
    [center.button1 addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [center.button2 addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [center.button3 addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [center.button4 addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [center.centerBtn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.scrollView addSubview:center];
}




#pragma mark XRCarouselViewDelegate
- (void)loopView:(XLsn0wLoop *)loopView clickImageAtIndex:(NSInteger)index {
    NSLog(@"点击了第%ld张图片", index);
}
//按钮点击
- (void)btnClick:(id)sender {
    UIButton *btn = sender;
    NSInteger tag = btn.tag;
    self.hidesBottomBarWhenPushed = YES;
    switch (tag) {
        case 1010: {
            MyPolicyViewController *myPolicy = [[MyPolicyViewController alloc] initWithNibName:@"MyPolicyViewController" bundle:nil];
            [self.navigationController pushViewController:myPolicy animated:YES];
        }
            break;
        case 1011: {
            WebViewController *web = [WebViewController shareInstance];
//            [web loadWebViewWithFileName:@"index1"];
            [web loadWebViewWithUrl:@"http://www.bohailife.net/mobile/about/index.jsp"];
            [self.navigationController pushViewController:web animated:YES];
        }
            break;
        case 1012: {
            ContactUsViewController *contactUs = [[ContactUsViewController alloc] initWithNibName:@"ContactUsViewController" bundle:nil];
            [self.navigationController pushViewController:contactUs animated:YES];
        }
            break;
        case 1013: {
            
        }
            break;
        case 1014: {
            
        }
            
            break;
        case 1015: {
            
        }
            
            break;
        case 1016: {
            
        }
            
            break;
        case 1017: {
            
        }
            break;
        case 1018: {
            
        }
            break;
        case 1019: {
            
        }
            break;
        case 1020: {
            WebViewController *web = [WebViewController shareInstance];
            [web loadWebViewWithFileName:@"product_center"];
            [self.navigationController pushViewController:web animated:YES];
        }
            break;
            
        default:
            break;
    }
    self.hidesBottomBarWhenPushed = NO;
}

- (void)viewWillAppear:(BOOL)animated {
    self.navigationController.navigationBar.hidden = YES;
}

- (void)viewWillDisappear:(BOOL)animated {
    self.navigationController.navigationBar.hidden = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
