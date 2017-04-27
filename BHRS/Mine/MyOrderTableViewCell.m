//
//  MyOrderTableViewCell.m
//  BHRS
//
//  Created by song heng on 2017/4/26.
//  Copyright © 2017年 王力. All rights reserved.
//
//
#import "MyOrderTableViewCell.h"

@implementation MyOrderTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
//  [self.pay.layer setCornerRadius:10.0]; //设置矩形四个圆角半径
//  [self.pay.layer setBorderWidth:1.0]; //边框宽度
//  [self.pay.layer setBorderColor:[UIColor colorWithRed:238.0 green:140.0 blue:48.0 alpha:1].CGColor];
//  [self.pay.layer setBorderWidth:5.0];
}
- (void)drawRect:(CGRect)rect{
  
  [super drawRect:rect];
//  self.pay.layer.cornerRadius = 3.0;
//  self.pay.layer.masksToBounds = YES;
  [self.pay.layer setBorderColor:[UIColor colorWithRed:238.0 green:140.0 blue:48.0 alpha:1].CGColor];

//  [self.pay.layer setCornerRadius:10.0]; //设置矩形四个圆角半径
    [self.pay.layer setBorderWidth:1.0]; //边框宽度
  
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (void)updateCellWithOrderModel:(OrderModel *)sModel{
  self.orderName.text = sModel.policyNum;
  self.policyName.text = sModel.policyName;
  self.creatTime.text = [NSString stringWithFormat:@"创建日期:%@",sModel.creatTime];
  self.sumMoney.text = [NSString stringWithFormat:@"金额:%@",sModel.sumMoney];
}
- (IBAction)shareInfoToOther:(UIButton *)sender {
}

- (IBAction)deletePolicy:(UIButton *)sender {
}

- (IBAction)payInfo:(UIButton *)sender {
}
@end
