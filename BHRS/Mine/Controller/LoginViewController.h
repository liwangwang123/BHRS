//
//  LoginViewController.h
//  BHRS
//
//  Created by song heng on 2017/4/28.
//  Copyright © 2017年 王力. All rights reserved.
//

#import "MainViewController.h"

@interface LoginViewController : MainViewController
@property (weak, nonatomic) IBOutlet UITextField *acount;
@property (weak, nonatomic) IBOutlet UITextField *password;
@property (weak, nonatomic) IBOutlet UIButton *losePassword;
@property (weak, nonatomic) IBOutlet UIButton *login;

@end
