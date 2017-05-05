//
//  MineViewController.m
//  BHRS
//
//  Created by song heng on 2017/4/26.
//  Copyright © 2017年 王力. All rights reserved.
//1

#import "MineViewController.h"
#import "MyOrdersViewController.h"
#import "MessageViewController.h"
#import "MyCertificateViewController.h"
#import "MyBankCardViewController.h"
#import "RelatedPolicyNOViewController.h"
#import "SettingsViewController.h"
#import "LoginViewController.h"
#import "WebViewController.h"
#import "MyPolicyViewController.h"
#import <sys/utsname.h>

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
  
  [self fitUI];

    // Do any additional setup after loading the view from its nib.
}

-(void)initButton:(UIButton*)btn{
    btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;//使图片和文字水平居中显示
//  禁止多次点击
   [btn setExclusiveTouch:YES];
  [btn setTitleEdgeInsets:UIEdgeInsetsMake(btn.imageView.frame.size.height ,-btn.imageView.frame.size.width, 0.0,0.0)];//文字距离上边框的距离增加imageView的高度，距离左边框减少imageView的宽度，距离下边框和右边框距离不变
  
  [btn setImageEdgeInsets:UIEdgeInsetsMake([UIScreen mainScreen].bounds.size.height/677 *20, [UIScreen mainScreen].bounds.size.height/677 *50,[UIScreen mainScreen].bounds.size.height/677 *40, [UIScreen mainScreen].bounds.size.height/677 *50)];//图片距离右边框距离减少图片的宽度，其它不边

}
- (void)viewWillAppear:(BOOL)animated{
  [super viewWillAppear:animated];
  self.navigationController.navigationBar.hidden = YES;
  self.tabBarController.tabBar.hidden = NO;
//  NSString *iphoneType = [self iphoneType];
  [self fitUI];
//  if ([iphoneType isEqualToString:@"iPhone 5"]) {
//   
//  }
  
}
- (void)fitUI{
  self.imageViewHeight.constant = [UIScreen mainScreen].bounds.size.height/677 *261;
  self.allorederHeight.constant = [UIScreen mainScreen].bounds.size.height/677 *48;
  self.orderHeight.constant = [UIScreen mainScreen].bounds.size.height/677 *70;
  self.revanceHeight.constant = [UIScreen mainScreen].bounds.size.height/677 *80;

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
    self.hidesBottomBarWhenPushed = YES;
  SettingsViewController *controller = [[SettingsViewController alloc] init];
  controller.title = @"设置";
  [self.navigationController pushViewController:controller animated:NO];
    self.hidesBottomBarWhenPushed = NO;
}

- (IBAction)messageList:(UIButton *)sender {
    self.hidesBottomBarWhenPushed = YES;
    MessageViewController *message = [[MessageViewController alloc] init];
    [self.navigationController pushViewController:message animated:YES];
    self.hidesBottomBarWhenPushed = NO;
}

- (IBAction)landingInfo:(UIButton *)sender {
    self.hidesBottomBarWhenPushed = YES;
  LoginViewController *loginVC = [[LoginViewController alloc] init];
  loginVC.title = @"登陆";
  [self.navigationController pushViewController:loginVC animated:NO];
    self.hidesBottomBarWhenPushed = NO;
}

- (IBAction)buyInsurance:(UIButton *)sender {
    self.hidesBottomBarWhenPushed = YES;
    WebViewController *web = [WebViewController shareInstance];
    [web loadWebViewWithFileName:@"product_details"];
    web.title = @"产品中心";
    [self.navigationController pushViewController:web animated:YES];
    self.hidesBottomBarWhenPushed = NO;
}

- (IBAction)referAllOrders:(UIButton *)sender {
    self.hidesBottomBarWhenPushed = YES;
  MyOrdersViewController *controller = [[MyOrdersViewController alloc] init];
  controller.title = @"我的订单";
  [self.navigationController pushViewController:controller animated:NO];
    self.hidesBottomBarWhenPushed = NO;
}

- (IBAction)referCompletedOrders:(UIButton *)sender {
    self.hidesBottomBarWhenPushed = YES;
  MyOrdersViewController *orderCtrl = [[MyOrdersViewController alloc] init];
  UIButton *button = (UIButton *)[orderCtrl.view viewWithTag:1000];
  [orderCtrl btnClicked:button];
    orderCtrl.title = @"我的订单";
  [self.navigationController pushViewController:orderCtrl animated:NO];
    self.hidesBottomBarWhenPushed = NO;
}

- (IBAction)referUncompletedOrders:(UIButton *)sender {
    self.hidesBottomBarWhenPushed = YES;
  MyOrdersViewController *orderCtrl = [[MyOrdersViewController alloc] init];
  UIButton *button = (UIButton *)[orderCtrl.view viewWithTag:1001];
  [orderCtrl btnClicked:button];
    orderCtrl.title = @"我的订单";
  [self.navigationController pushViewController:orderCtrl animated:NO];self.hidesBottomBarWhenPushed = NO;
}

- (IBAction)referExpireOrders:(UIButton *)sender {
    self.hidesBottomBarWhenPushed = YES;
  MyOrdersViewController *orderCtrl = [[MyOrdersViewController alloc] init];
  UIButton *button = (UIButton *)[orderCtrl.view viewWithTag:1002];
  [orderCtrl btnClicked:button];
    orderCtrl.title = @"我的订单";
  [self.navigationController pushViewController:orderCtrl animated:NO];
    self.hidesBottomBarWhenPushed = NO;
}
- (IBAction)referRelebancyOrders:(UIButton *)sender {
    self.hidesBottomBarWhenPushed = YES;
    RelatedPolicyNOViewController *related = [[RelatedPolicyNOViewController alloc] init];
    [self.navigationController pushViewController:related animated:YES];
    self.hidesBottomBarWhenPushed = NO;
}

- (IBAction)referMyOrders:(UIButton *)sender {
    self.hidesBottomBarWhenPushed = YES;
    MyPolicyViewController *myPolicy = [[MyPolicyViewController alloc] initWithNibName:@"MyPolicyViewController" bundle:nil];
    [self.navigationController pushViewController:myPolicy animated:YES];
    self.hidesBottomBarWhenPushed = NO;
  
}

- (IBAction)referMyCredentials:(UIButton *)sender {
    self.hidesBottomBarWhenPushed = YES;
    MyCertificateViewController *certificate = [[MyCertificateViewController alloc] init];
    [self.navigationController pushViewController:certificate animated:YES];
    self.hidesBottomBarWhenPushed = NO;
}
- (IBAction)referMyDebitCards:(UIButton *)sender {
    self.hidesBottomBarWhenPushed = YES;
    MyBankCardViewController *bank = [[MyBankCardViewController alloc] init];
    [self.navigationController pushViewController:bank animated:YES];
    self.hidesBottomBarWhenPushed = NO;
}
- (NSString *)iphoneType {
  
  struct utsname systemInfo;
  
  uname(&systemInfo);
  
  NSString *platform = [NSString stringWithCString:systemInfo.machine encoding:NSASCIIStringEncoding];
  
  if ([platform isEqualToString:@"iPhone1,1"]) return @"iPhone 2G";
  
  if ([platform isEqualToString:@"iPhone1,2"]) return @"iPhone 3G";
  
  if ([platform isEqualToString:@"iPhone2,1"]) return @"iPhone 3GS";
  
  if ([platform isEqualToString:@"iPhone3,1"]) return @"iPhone 4";
  
  if ([platform isEqualToString:@"iPhone3,2"]) return @"iPhone 4";
  
  if ([platform isEqualToString:@"iPhone3,3"]) return @"iPhone 4";
  
  if ([platform isEqualToString:@"iPhone4,1"]) return @"iPhone 4S";
  
  if ([platform isEqualToString:@"iPhone5,1"]) return @"iPhone 5";
  
  if ([platform isEqualToString:@"iPhone5,2"]) return @"iPhone 5";
  
  if ([platform isEqualToString:@"iPhone5,3"]) return @"iPhone 5c";
  
  if ([platform isEqualToString:@"iPhone5,4"]) return @"iPhone 5c";
  
  if ([platform isEqualToString:@"iPhone6,1"]) return @"iPhone 5s";
  
  if ([platform isEqualToString:@"iPhone6,2"]) return @"iPhone 5s";
  
  if ([platform isEqualToString:@"iPhone7,1"]) return @"iPhone 6 Plus";
  
  if ([platform isEqualToString:@"iPhone7,2"]) return @"iPhone 6";
  
  if ([platform isEqualToString:@"iPhone8,1"]) return @"iPhone 6s";
  
  if ([platform isEqualToString:@"iPhone8,2"]) return @"iPhone 6s Plus";
  
  if ([platform isEqualToString:@"iPhone8,4"]) return @"iPhone SE";
  
  if ([platform isEqualToString:@"iPhone9,1"]) return @"iPhone 7";
  
  if ([platform isEqualToString:@"iPhone9,2"]) return @"iPhone 7 Plus";
  
  if ([platform isEqualToString:@"iPod1,1"])   return @"iPod Touch 1G";
  
  if ([platform isEqualToString:@"iPod2,1"])   return @"iPod Touch 2G";
  
  if ([platform isEqualToString:@"iPod3,1"])   return @"iPod Touch 3G";
  
  if ([platform isEqualToString:@"iPod4,1"])   return @"iPod Touch 4G";
  
  if ([platform isEqualToString:@"iPod5,1"])   return @"iPod Touch 5G";
  
  if ([platform isEqualToString:@"iPad1,1"])   return @"iPad 1G";
  
  if ([platform isEqualToString:@"iPad2,1"])   return @"iPad 2";
  
  if ([platform isEqualToString:@"iPad2,2"])   return @"iPad 2";
  
  if ([platform isEqualToString:@"iPad2,3"])   return @"iPad 2";
  
  if ([platform isEqualToString:@"iPad2,4"])   return @"iPad 2";
  
  if ([platform isEqualToString:@"iPad2,5"])   return @"iPad Mini 1G";
  
  if ([platform isEqualToString:@"iPad2,6"])   return @"iPad Mini 1G";
  
  if ([platform isEqualToString:@"iPad2,7"])   return @"iPad Mini 1G";
  
  if ([platform isEqualToString:@"iPad3,1"])   return @"iPad 3";
  
  if ([platform isEqualToString:@"iPad3,2"])   return @"iPad 3";
  
  if ([platform isEqualToString:@"iPad3,3"])   return @"iPad 3";
  
  if ([platform isEqualToString:@"iPad3,4"])   return @"iPad 4";
  
  if ([platform isEqualToString:@"iPad3,5"])   return @"iPad 4";
  
  if ([platform isEqualToString:@"iPad3,6"])   return @"iPad 4";
  
  if ([platform isEqualToString:@"iPad4,1"])   return @"iPad Air";
  
  if ([platform isEqualToString:@"iPad4,2"])   return @"iPad Air";
  
  if ([platform isEqualToString:@"iPad4,3"])   return @"iPad Air";
  
  if ([platform isEqualToString:@"iPad4,4"])   return @"iPad Mini 2G";
  
  if ([platform isEqualToString:@"iPad4,5"])   return @"iPad Mini 2G";
  
  if ([platform isEqualToString:@"iPad4,6"])   return @"iPad Mini 2G";
  
  if ([platform isEqualToString:@"i386"])      return @"iPhone Simulator";
  
  if ([platform isEqualToString:@"x86_64"])    return @"iPhone Simulator";
  
  return platform;
  
}
@end
