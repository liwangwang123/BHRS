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

@interface HomeViewController ()<XLsn0wLoopDelegate>
@property (nonatomic, strong) XLsn0wLoop *loop;
@property (nonatomic, strong) UIScrollView *scrollView;
@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationController.navigationBar.hidden = YES;
    
    
    [self addScrollView];
    [self addLoop];
    [self addTopView];
    [self addHotProductView];
    [self addProductCenter];
}

- (void)addScrollView {
    _scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    [_scrollView setContentSize:CGSizeMake(SCREEN_WIDTH, 1040)];
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
    [self.scrollView addSubview:topView];
}

- (void)addHotProductView {
    HotProduct *hot = [[HotProduct alloc] initWithFrame:CGRectMake(0, 320, SCREEN_WIDTH, 300)];
    [self.scrollView addSubview:hot];
}

- (void)addProductCenter {
    ProductCenter *center = [[ProductCenter alloc] initWithFrame:CGRectMake(0, 640, SCREEN_WIDTH, 300)];
    [self.scrollView addSubview:center];
}

#pragma mark XRCarouselViewDelegate
- (void)loopView:(XLsn0wLoop *)loopView clickImageAtIndex:(NSInteger)index {
    NSLog(@"点击了第%ld张图片", index);
}

- (void)viewWillAppear:(BOOL)animated {
    
}

- (void)viewWillDisappear:(BOOL)animated {
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
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
