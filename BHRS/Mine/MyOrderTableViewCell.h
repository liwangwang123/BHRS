//
//  MyOrderTableViewCell.h
//  BHRS
//
//  Created by song heng on 2017/4/26.
//  Copyright © 2017年 王力. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OrderModel.h"
@interface MyOrderTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *orderName;
@property (weak, nonatomic) IBOutlet UIButton *shareButton;
@property (weak, nonatomic) IBOutlet UILabel *policyName;
@property (weak, nonatomic) IBOutlet UIImageView *policyImage;
@property (weak, nonatomic) IBOutlet UILabel *creatTime;
@property (weak, nonatomic) IBOutlet UILabel *sumMoney;
@property (weak, nonatomic) IBOutlet UIButton *deleteButton;
@property (weak, nonatomic) IBOutlet UIButton *pay;
- (IBAction)shareInfoToOther:(UIButton *)sender;
- (IBAction)deletePolicy:(UIButton *)sender;
- (IBAction)payInfo:(UIButton *)sender;
- (void)updateCellWithOrderModel:(OrderModel *)sModel;
@end
