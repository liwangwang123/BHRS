//
//  orderModel.h
//  BHRS
//
//  Created by song heng on 2017/4/26.
//  Copyright © 2017年 王力. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OrderModel : NSObject

@property (nonatomic,strong)NSString *policyNum;
@property (nonatomic,strong)NSString *policyName;
@property (nonatomic,strong)NSString *creatTime;
@property (nonatomic,strong)NSString *sumMoney;
@property (nonatomic,strong)NSString  *imgUrl;

@end
