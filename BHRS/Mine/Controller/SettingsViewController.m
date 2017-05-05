//
//  SettingsViewController.m
//  BHRS
//
//  Created by song heng on 2017/4/27.
//  Copyright © 2017年 王力. All rights reserved.
//1

#import "SettingsViewController.h"
#import "AcountSaftyViewController.h"
#import "OnApViewController.h"
#import "ContactUsViewController.h"
#import "WebViewController.h"
#import "LoginViewController.h"

@interface SettingsViewController ()
//@property (nonatomic,strong) UIButton *aCountSafty;
//@property (nonatomic,strong) UIButton *acontactUs;
//@property (nonatomic,strong) UIButton *welcome;
//@property (nonatomic,strong) UIButton *neVesion;
//@property (nonatomic,strong) UIButton *company;
//@property (nonatomic,strong) UIButton *onC;


@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//  
//  NSArray *bottonArray = [NSArray arrayWithObjects:_aCountSafty,_acontactUs,_welcome,_neVesion,_company,_onC, nil];
  NSArray *leftTitleArray = [NSArray arrayWithObjects:@"账户安全",@"联系我们",@"欢迎页",@"检测新版本",@"公司介绍",@"关于", nil];
  NSArray *rightTitleArray = [NSArray arrayWithObjects:@"可修改密码",@"a",@"a",@"a",@"a",@"渤海人寿APP二维码", nil];
  [self creatButtonwithleftTitle:@"账户安全" andRightTitle:@"可修改密码" height:90 color:[UIColor blueColor] integarTag:100];
  for (int i=0; i<6; i++) {
    if (i == 1) {
      [self creatButtonwithleftTitle:leftTitleArray[i] andRightTitle:rightTitleArray[i] height:90+i*55 color:[UIColor blueColor] integarTag:100+i];
    }else if(i > 1){
    [self creatButtonwithleftTitle:leftTitleArray[i] andRightTitle:rightTitleArray[i] height:90+55+(i-1)*42 color:[UIColor lightGrayColor] integarTag:100+i];
    }
  }
  UIButton *loginBtn = [UIButton buttonWithType:UIButtonTypeCustom];
  loginBtn.backgroundColor = [UIColor colorWithRed:233.0/255.0 green:109.0/255.0 blue:8.0/255.0 alpha:1];
  [loginBtn setTitle:@"登陆" forState:UIControlStateNormal];
  loginBtn.frame = CGRectMake(20, [self.view viewWithTag:105].frame.origin.y + [self.view viewWithTag:105].bounds.size.height +10, [UIScreen mainScreen].bounds.size.width - 40, 40);
  [loginBtn addTarget:self action:@selector(login) forControlEvents:UIControlEventTouchUpInside];
  [self.view addSubview:loginBtn];
    // Do any additional setup after loading the view from its nib.
}
- (void)login{
    LoginViewController *log = [[LoginViewController alloc] init];
    [self.navigationController pushViewController:log animated:YES];
}
- (void)creatButtonwithleftTitle:(NSString *)leftTitle andRightTitle:(NSString *)rightTitle height:(NSInteger)height color:(UIColor *)color integarTag:(NSInteger)tag{
//  UIImageView *imgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@""]];
//  imgView.frame = CGRectMake(0, 0+height, self.view.bounds.size.width, 60);
//  [self.view addSubview:imgView];
  
  UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
  [btn setBackgroundColor:[UIColor whiteColor]];
  [btn setImage:[UIImage imageNamed:@"position_about_set_arrow_icon.png"] forState:UIControlStateNormal];
  btn.frame = CGRectMake(0, 10+height, [UIScreen mainScreen].bounds.size.width, 40);;
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
  //  禁止多次点击
  [btn setExclusiveTouch:YES];
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
  if (button.tag == 100) {
    AcountSaftyViewController *acountVC = [[AcountSaftyViewController alloc] init];
    acountVC.title = @"账户安全";
    [self.navigationController pushViewController:acountVC animated:NO];
  } else if (button.tag == 101) {
      ContactUsViewController *contactUs = [[ContactUsViewController alloc] initWithNibName:@"ContactUsViewController" bundle:nil];
      [self.navigationController pushViewController:contactUs animated:YES];
  } else if (button.tag == 104) {
      WebViewController *web = [WebViewController shareInstance];
      [web loadWebViewWithUrl:@"http://www.bohailife.net/mobile/about/index.jsp"];
      web.title = @"公司介绍";
      [self.navigationController pushViewController:web animated:YES];
  } else if (button.tag == 105) {
    OnApViewController *onVC = [[OnApViewController alloc] init];
    onVC.title = @"关于";
    [self.navigationController pushViewController:onVC animated:NO];
  }
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
