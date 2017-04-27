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
