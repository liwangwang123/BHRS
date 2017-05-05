//
//  ContactUsViewController.h
//  BHRS
//
//  Created by 王力 on 2017/4/25.
//  Copyright © 2017年 王力. All rights reserved.
//

#import "MainViewController.h"

@interface ContactUsViewController : MainViewController
/**电话*/
@property (weak, nonatomic) IBOutlet UIButton *telLabel;
/**网址*/
@property (weak, nonatomic) IBOutlet UIButton *webLabel;
/**微信*/
@property (weak, nonatomic) IBOutlet UIButton *wxLabel;
/**反馈*/
@property (weak, nonatomic) IBOutlet UIButton *feedbackBtn;

@end
