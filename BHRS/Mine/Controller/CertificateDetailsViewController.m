//
//  CertificateDetailsViewController.m
//  BHRS
//
//  Created by 王力 on 2017/4/27.
//  Copyright © 2017年 王力. All rights reserved.
//

#import "CertificateDetailsViewController.h"
#import "TooltipView.h"

@interface CertificateDetailsViewController ()

@end

@implementation CertificateDetailsViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"证件详情";
}
- (IBAction)changeInfoClick:(id)sender {
    TooltipView *tooltip = [[TooltipView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:tooltip];
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
