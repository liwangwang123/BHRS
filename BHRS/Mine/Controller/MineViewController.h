//
//  MineViewController.h
//  BHRS
//
//  Created by song heng on 2017/4/26.
//  Copyright © 2017年 王力. All rights reserved.
//

#import "MainViewController.h"

@interface MineViewController : MainViewController
//上方背景图
@property (weak, nonatomic) IBOutlet UIImageView *bgImageView;
//设置
@property (weak, nonatomic) IBOutlet UIButton *settingsButton;
//联系
@property (weak, nonatomic) IBOutlet UIButton *contactButton;
//登陆
@property (weak, nonatomic) IBOutlet UIButton *landingbutton;
//提示语
@property (weak, nonatomic) IBOutlet UILabel *remindinglabel;
//买保险
@property (weak, nonatomic) IBOutlet UIButton *buyInsuranceButton;
//所有订单
@property (weak, nonatomic) IBOutlet UIButton *myOrderButton;
//已完成订单
@property (weak, nonatomic) IBOutlet UIButton *compeletedOrderButton;
//未完成订单
@property (weak, nonatomic) IBOutlet UIButton *unCompletedOrderButton;
//已失效订单
@property (weak, nonatomic) IBOutlet UIButton *expiredButton;
//保单查询
@property (weak, nonatomic) IBOutlet UIButton *orderButton;
//关联保单
@property (weak, nonatomic) IBOutlet UIButton *relevancyOrderButton;
//证件
@property (weak, nonatomic) IBOutlet UIButton *credentialsButton;
//银行卡
@property (weak, nonatomic) IBOutlet UIButton *debitCardButton;
- (IBAction)settingSomethings:(UIButton *)sender;
- (IBAction)messageList:(UIButton *)sender;
- (IBAction)landingInfo:(UIButton *)sender;
- (IBAction)buyInsurance:(UIButton *)sender;
- (IBAction)referAllOrders:(UIButton *)sender;
- (IBAction)referCompletedOrders:(UIButton *)sender;
- (IBAction)referUncompletedOrders:(UIButton *)sender;
- (IBAction)referExpireOrders:(UIButton *)sender;
- (IBAction)referRelebancyOrders:(UIButton *)sender;
- (IBAction)referMyOrders:(UIButton *)sender;
- (IBAction)referMyCredentials:(UIButton *)sender;

- (IBAction)referMyDebitCards:(UIButton *)sender;

@end
