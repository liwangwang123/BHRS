//
//  AddCertificatesViewController.m
//  BHRS
//
//  Created by 王力 on 2017/4/27.
//  Copyright © 2017年 王力. All rights reserved.
//

#import "AddCertificatesViewController.h"
#import "SelectCertificateTypeView.h"

@interface AddCertificatesViewController ()

@end

@implementation AddCertificatesViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"添加证件";
    
    [self addRightBarButtonItemWithText:@"保存"];
}

- (void)rightBarbuttonItemAction:(UIBarButtonItem *)item {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"信息不全" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"确定", nil];
    [alert show];
}



- (IBAction)certificatesBtnClick:(id)sender {
    SelectCertificateTypeView *select = [[SelectCertificateTypeView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:select];
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
