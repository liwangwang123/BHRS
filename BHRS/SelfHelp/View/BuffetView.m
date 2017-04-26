//
//  SelfHelpView.m
//  BHRS
//
//  Created by 王力 on 2017/4/25.
//  Copyright © 2017年 王力. All rights reserved.
//

#import "BuffetView.h"

@implementation BuffetView

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
    [[NSBundle mainBundle] loadNibNamed:@"BuffetView" owner:self options:nil];
    self.contentView.frame = self.bounds;
    self.contentView.backgroundColor = COLOR_RGB(245, 245, 245);
    [self addSubview:self.contentView];
}


@end
