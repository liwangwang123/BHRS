//
//  MineViewController.m
//  BHRS
//
//  Created by song heng on 2017/4/26.
//  Copyright © 2017年 王力. All rights reserved.
//

#import "MineViewController.h"
#import "MyOrdersViewController.h"
#import "MessageViewController.h"
#import "MyCertificateViewController.h"
#import "MyBankCardViewController.h"
#import "RelatedPolicyNOViewController.h"
#import "SettingsViewController.h"
#import "WebViewController.h"

@interface MineViewController ()

@end

@implementation MineViewController
//
- (void)viewDidLoad {
    [super viewDidLoad];
  self.navigationController.navigationBar.hidden = YES;
//  self.view.backgroundColor = [UIColor colorWithRed:245.0 green:245.0 blue:245.0 alpha:1];
  [self initButton:self.orderButton];
  [self initButton:self.credentialsButton];
  [self initButton:self.debitCardButton];
  [self initButton:self.relevancyOrderButton];
    // Do any additional setup after loading the view from its nib.
}

-(void)initButton:(UIButton*)btn{
    btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;//使图片和文字水平居中显示

  [btn setTitleEdgeInsets:UIEdgeInsetsMake(btn.imageView.frame.size.height ,-btn.imageView.frame.size.width, 0.0,0.0)];//文字距离上边框的距离增加imageView的高度，距离左边框减少imageView的宽度，距离下边框和右边框距离不变
  
  [btn setImageEdgeInsets:UIEdgeInsetsMake(20, 50,40, 50)];//图片距离右边框距离减少图片的宽度，其它不边

}
- (void)viewWillAppear:(BOOL)animated{
  [super viewWillAppear:animated];
  self.navigationController.navigationBar.hidden = YES;
  self.tabBarController.tabBar.hidden = NO;

}

- (void)viewWillDisappear:(BOOL)animated {
    self.navigationController.navigationBar.hidden = NO;
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

- (IBAction)settingSomethings:(UIButton *)sender {
  SettingsViewController *controller = [[SettingsViewController alloc] init];
  controller.title = @"设置";
  [self.navigationController pushViewController:controller animated:NO];
}

- (IBAction)messageList:(UIButton *)sender {
    
    MessageViewController *message = [[MessageViewController alloc] init];
    [self.navigationController pushViewController:message animated:YES];
}

- (IBAction)landingInfo:(UIButton *)sender {
  LoginViewController *loginVC = [[LoginViewController alloc] init];
  loginVC.title = @"登陆";
  [self.navigationController pushViewController:loginVC animated:NO];
}

- (IBAction)buyInsurance:(UIButton *)sender {
    WebViewController *web = [WebViewController shareInstance];
    [web loadWebViewWithFileName:@"product_details"];
    [self.navigationController pushViewController:web animated:YES];
}

- (IBAction)referAllOrders:(UIButton *)sender {
  MyOrdersViewController *controller = [[MyOrdersViewController alloc] init];
  controller.title = @"我的订单";
  [self.navigationController pushViewController:controller animated:NO];
}

- (IBAction)referCompletedOrders:(UIButton *)sender {
  MyOrdersViewController *orderCtrl = [[MyOrdersViewController alloc] init];
  UIButton *button = (UIButton *)[orderCtrl.view viewWithTag:1000];
  [orderCtrl btnClicked:button];
  [self.navigationController pushViewController:orderCtrl animated:NO];
}

- (IBAction)referUncompletedOrders:(UIButton *)sender {
  MyOrdersViewController *orderCtrl = [[MyOrdersViewController alloc] init];
  UIButton *button = (UIButton *)[orderCtrl.view viewWithTag:1001];
  [orderCtrl btnClicked:button];
  [self.navigationController pushViewController:orderCtrl animated:NO];
}

- (IBAction)referExpireOrders:(UIButton *)sender {
  MyOrdersViewController *orderCtrl = [[MyOrdersViewController alloc] init];
  UIButton *button = (UIButton *)[orderCtrl.view viewWithTag:1002];
  [orderCtrl btnClicked:button];
  [self.navigationController pushViewController:orderCtrl animated:NO];
}
- (IBAction)referRelebancyOrders:(UIButton *)sender {
    RelatedPolicyNOViewController *related = [[RelatedPolicyNOViewController alloc] init];
    [self.navigationController pushViewController:related animated:YES];
}

- (IBAction)referMyOrders:(UIButton *)sender {
 
  
}

- (IBAction)referMyCredentials:(UIButton *)sender {
    MyCertificateViewController *certificate = [[MyCertificateViewController alloc] init];
    [self.navigationController pushViewController:certificate animated:YES];
}
- (IBAction)referMyDebitCards:(UIButton *)sender {
    MyBankCardViewController *bank = [[MyBankCardViewController alloc] init];
    [self.navigationController pushViewController:bank animated:YES];
}
@end
