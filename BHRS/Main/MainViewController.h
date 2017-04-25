//
//  MainViewController.h
//  ReferenceMessage
//
//  Created by 王力 on 16/9/12.
//  Copyright © 2016年 王力. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController

- (void)addLeftBarButtonItemWithImage:(UIImage *)image;//设置leftBarbuttonItem图片
- (void)addLeftBarButtonItemWithText:(NSString *)text;//设置leftBarbuttonItem文字

- (void)addRightBarButtonItemWithImage:(UIImage *)image;//设置rightBarbuttonItem图片
- (void)addRightBarButtonItemWithText:(NSString *)text;//设置rightBarbuttonItem文字

- (void)leftBarbuttonItemAction:(UIBarButtonItem *)item;//设置leftBarbuttonItem触发方法
- (void)rightBarbuttonItemAction:(UIBarButtonItem *)item;//设置rightBarbuttonItem触发方法

- (void)setLeftBarbuttonItemColorWithColor:(UIColor *)color;//设置leftBarButtonItem的颜色
- (void)setRightBarbuttonItemColorWithColor:(UIColor *)color;//设置rightBarButtonItem的颜色
- (void)setNavigationItemTitleColorWithColor:(UIColor *)color;//设置title颜色
- (void)navigationBarAttributeChanges;


@end
