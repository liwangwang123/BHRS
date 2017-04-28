//
//  MyCertificateViewController.m
//  BHRS
//
//  Created by 王力 on 2017/4/27.
//  Copyright © 2017年 王力. All rights reserved.
//

#import "MyCertificateViewController.h"
#import "CertificateDetailsViewController.h"
#import "AddCertificatesViewController.h"

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
    self.title = @"我的证件";
}
//身份证
- (IBAction)myIdCardClick:(id)sender {
    CertificateDetailsViewController *certificate = [[CertificateDetailsViewController alloc] init];
    [self.navigationController pushViewController:certificate animated:YES];
}
//新增证件
- (IBAction)addDocuments:(id)sender {
    AddCertificatesViewController *add = [[AddCertificatesViewController alloc] init];
    [self.navigationController pushViewController:add animated:YES];
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
