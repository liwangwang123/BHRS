//
//  OnApViewController.m
//  BHRS
//
//  Created by song heng on 2017/4/28.
//  Copyright © 2017年 王力. All rights reserved.
//

#import "OnApViewController.h"

@interface OnApViewController ()

@end

@implementation OnApViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (void)viewWillAppear:(BOOL)animated{
  [super viewWillAppear:animated];
  self.navigationController.navigationBar.hidden = NO;
  self.tabBarController.tabBar.hidden = YES;
  
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
