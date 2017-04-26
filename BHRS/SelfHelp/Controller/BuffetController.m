//
//  BuffetController.m
//  BHRS
//
//  Created by 王力 on 2017/4/26.
//  Copyright © 2017年 王力. All rights reserved.
//

#import "BuffetController.h"
#import "BuffetView.h"

@interface BuffetController ()

@end

@implementation BuffetController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addBuffetView];
}

- (void)addBuffetView {
    BuffetView *buffet = [[BuffetView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:buffet];
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
