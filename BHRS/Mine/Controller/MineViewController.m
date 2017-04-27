//
//  MineViewController.m
//  BHRS
//
//  Created by song heng on 2017/4/26.
//  Copyright © 2017年 王力. All rights reserved.
//

#import "MineViewController.h"
#import "MyOrdersViewController.h"

@interface MineViewController ()

@end

@implementation MineViewController

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
  self.navigationController.navigationBar.hidden = YES;

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
}

- (IBAction)messageList:(UIButton *)sender {
}

- (IBAction)landingInfo:(UIButton *)sender {
}

- (IBAction)buyInsurance:(UIButton *)sender {
}

- (IBAction)referAllOrders:(UIButton *)sender {
  MyOrdersViewController *controller = [[MyOrdersViewController alloc] init];
  controller.title = @"我的订单";
  [self.navigationController pushViewController:controller animated:NO];
}

- (IBAction)referCompletedOrders:(UIButton *)sender {
}

- (IBAction)referUncompletedOrders:(UIButton *)sender {
}

- (IBAction)referExpireOrders:(UIButton *)sender {
}
- (IBAction)referRelebancyOrders:(UIButton *)sender {
}

- (IBAction)referMyOrders:(UIButton *)sender {
 
  
}

- (IBAction)referMyCredentials:(UIButton *)sender {
}
- (IBAction)referMyDebitCards:(UIButton *)sender {
}
@end
