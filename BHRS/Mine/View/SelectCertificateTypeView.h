//
//  SelectCertificateTypeView.h
//  BHRS
//
//  Created by 王力 on 2017/5/5.
//  Copyright © 2017年 王力. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SelectCertificateTypeView : UIView
@property (strong, nonatomic) IBOutlet UIView *contentView;
/* 身份证 **/
@property (weak, nonatomic) IBOutlet UIButton *iDCardbtn;
/* 护照 **/
@property (weak, nonatomic) IBOutlet UIButton *passportBtn;
/* 回乡证 **/
@property (weak, nonatomic) IBOutlet UIButton *reentryPermitBtn;
/* 港澳通行证 **/
@property (weak, nonatomic) IBOutlet UIButton *hkAndMacaoBtn;

@end
