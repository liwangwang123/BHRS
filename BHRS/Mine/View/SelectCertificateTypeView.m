//
//  SelectCertificateTypeView.m
//  BHRS
//
//  Created by 王力 on 2017/5/5.
//  Copyright © 2017年 王力. All rights reserved.
//

#import "SelectCertificateTypeView.h"

@interface SelectCertificateTypeView ()

@property (nonatomic, strong) UIButton *publicBtn;

@end

@implementation SelectCertificateTypeView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self awakeFromNib];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self awakeFromNib];
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    [[NSBundle mainBundle] loadNibNamed:@"SelectCertificateTypeView" owner:self options:nil];
    self.contentView.frame = self.bounds;
    self.contentView.backgroundColor = [COLOR_RGB(102, 102, 102) colorWithAlphaComponent:0.8];
    [self.iDCardbtn setImage:[UIImage imageNamed:@"accessory_risk_not_renewal_check_dot2.png"] forState:UIControlStateNormal];
    self.publicBtn = self.iDCardbtn;
    [self addSubview:self.contentView];
}

- (IBAction)hkAndMacaoClick:(id)sender {
    UIButton *btn = sender;
    if (self.publicBtn != btn) {
        [self.publicBtn setImage:[UIImage imageNamed:@"accessory_risk_not_renewal_check_dot.png"] forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:@"accessory_risk_not_renewal_check_dot2.png"] forState:UIControlStateNormal];
        self.publicBtn = btn;
    }
}
- (IBAction)sureBtn:(id)sender {
    [self removeFromSuperview];
}



@end
