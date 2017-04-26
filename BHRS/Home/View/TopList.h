//
//  TopList.h
//  BHRS
//
//  Created by 王力 on 2017/4/25.
//  Copyright © 2017年 王力. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TopList : UIView
@property (strong, nonatomic) IBOutlet UIView *contentView;
/**我的保险*/
@property (weak, nonatomic) IBOutlet UIButton *myInsurance;
/**公司介绍*/
@property (weak, nonatomic) IBOutlet UIButton *companyIntroduction;
/**联系我们*/
@property (weak, nonatomic) IBOutlet UIButton *contactUs;

@end
