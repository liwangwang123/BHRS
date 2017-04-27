//
//  MyCertificateViewController.m
//  BHRS
//
//  Created by 王力 on 2017/4/27.
//  Copyright © 2017年 王力. All rights reserved.
//

#import "MyCertificateViewController.h"

@interface MyCertificateViewController ()

@end

@implementation MyCertificateViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.title = @"我的证件";
}
//身份证
- (IBAction)myIdCardClick:(id)sender {
    
}
//新增证件
- (IBAction)addDocuments:(id)sender {
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
