//
//  AcountSaftyViewController.m
//  BHRS
//
//  Created by song heng on 2017/4/28.
//  Copyright © 2017年 王力. All rights reserved.
// 1

#import "AcountSaftyViewController.h"

@interface AcountSaftyViewController ()

@end

@implementation AcountSaftyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  NSArray *leftTitleArray = [NSArray arrayWithObjects:@"登陆密码",@"支付密码",@"更换手机号", nil];
  NSArray *rightTitleArray = [NSArray arrayWithObjects:@"a",@"涉及资金交易时使用",@"a", nil];
//  [self creatButtonwithleftTitle:@"账户安全" andRightTitle:@"可修改密码" height:90 color:[UIColor blueColor] integarTag:110];
  for (int i=0; i<3; i++) {
    if (i == 2) {
      [self creatButtonwithleftTitle:leftTitleArray[i] andRightTitle:rightTitleArray[i] height:90+i*45 color:[UIColor blueColor] integarTag:110+i];
    }else if(i < 2){
      [self creatButtonwithleftTitle:leftTitleArray[i] andRightTitle:rightTitleArray[i] height:90+i*42 color:[UIColor lightGrayColor] integarTag:110+i];
    }
  }

    // Do any additional setup after loading the view.
}
- (void)viewWillAppear:(BOOL)animated{
  [super viewWillAppear:animated];
    self.view.backgroundColor = [UIColor colorWithRed:228.0/255.0 green:231.0/255.0 blue:237.0/255.0 alpha:1];
  self.navigationController.navigationBar.hidden = NO;
  self.tabBarController.tabBar.hidden = YES;
}
- (void)creatButtonwithleftTitle:(NSString *)leftTitle andRightTitle:(NSString *)rightTitle height:(NSInteger)height color:(UIColor *)color integarTag:(NSInteger)tag{
  //  UIImageView *imgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@""]];
  //  imgView.frame = CGRectMake(0, 0+height, self.view.bounds.size.width, 60);
  //  [self.view addSubview:imgView];
  UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
  [btn setBackgroundColor:[UIColor whiteColor]];
  [btn setImage:[UIImage imageNamed:@"position_about_set_arrow_icon.png"] forState:UIControlStateNormal];
  btn.frame = CGRectMake(0, 10+height, self.view.bounds.size.width, 40);;
  [self.view addSubview:btn];
  btn.imageEdgeInsets = UIEdgeInsetsMake(0, [UIScreen mainScreen].bounds.size.width - 50, 0,0);
  btn.tag = tag;
  [btn addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
  UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, 200,40)];
  label1.text = leftTitle;
  label1.font = [UIFont systemFontOfSize:15];
  label1.userInteractionEnabled = NO;
  [btn addSubview:label1];
  if (rightTitle.length <=1 ) {
    return;
  }
  UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width- 120 - 40, 0, 120, 40)];
  label2.textAlignment = NSTextAlignmentRight;
  label2.font = [UIFont systemFontOfSize:12];
  label2.text = rightTitle;
  label2.textColor = color;
  label1.userInteractionEnabled = NO;
  [btn addSubview:label2];
}
- (void)btnClicked:(UIButton *)button{
  NSLog( @"%li",button.tag);
  if (button.tag == 110) {
 
  }
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
