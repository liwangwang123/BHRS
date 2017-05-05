//
//  TooltipView.m
//  BHRS
//
//  Created by 王力 on 2017/5/5.
//  Copyright © 2017年 王力. All rights reserved.
//

#import "TooltipView.h"

@implementation TooltipView

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
    [[NSBundle mainBundle] loadNibNamed:@"TooltipView" owner:self options:nil];
    self.contentView.frame = self.bounds;
    self.contentView.backgroundColor = [COLOR_RGB(102, 102, 102) colorWithAlphaComponent:0.8];
    [self addSubview:self.contentView];
}
- (IBAction)sureBtn:(id)sender {
    [self removeFromSuperview];
}


@end
