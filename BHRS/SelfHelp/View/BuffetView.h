//
//  SelfHelpView.h
//  BHRS
//
//  Created by 王力 on 2017/4/25.
//  Copyright © 2017年 王力. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BuffetView : UIView
@property (strong, nonatomic) IBOutlet UIView *contentView;

/**我的保单*/
@property (weak, nonatomic) IBOutlet UIButton *myPolicy;

/**新闻资讯*/
@property (weak, nonatomic) IBOutlet UIButton *information;

@property (weak, nonatomic) IBOutlet UIButton *informationBottom;

/**公司介绍*/
@property (weak, nonatomic) IBOutlet UIButton *companyIntroduction;
//property follows cocoa naming convention for returning 'owned' objects
@end
