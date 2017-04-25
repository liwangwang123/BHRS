//
//  HomeViewController.m
//  BHRS
//
//  Created by 王力 on 2017/4/25.
//  Copyright © 2017年 王力. All rights reserved.
//

#import "HomeViewController.h"
#import "TopList.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationController.navigationBar.hidden = YES;
    
    TopList *testView = [[TopList alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [self.view addSubview:testView];

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
