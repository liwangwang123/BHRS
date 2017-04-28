//
//  LoginViewController.m
//  BHRS
//
//  Created by song heng on 2017/4/28.
//  Copyright © 2017年 王力. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  UIImageView *imageViewacount=[[UIImageView alloc]initWithFrame:CGRectMake(30, 20, 15, 15)];
  imageViewacount.image=[UIImage imageNamed:@"login_account_null.png"];
  self.acount.leftView=imageViewacount;
  self.acount.leftViewMode=UITextFieldViewModeAlways; //此处用来设置leftview现实时机
  self.acount.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
  UIImageView *imageViewapassword=[[UIImageView alloc]initWithFrame:CGRectMake(-30, 0, 15, 15)];
  imageViewapassword.image=[UIImage imageNamed:@"pass.png"];
  self.password.leftView=imageViewapassword;
  self.password.leftViewMode=UITextFieldViewModeAlways; //此处用来设置leftview现实时机
  self.password.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
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
