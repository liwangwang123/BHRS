//
//  Macro.h
//  BHRS
//
//  Created by 王力 on 2017/4/25.
//  Copyright © 2017年 王力. All rights reserved.
//

#ifndef Macro_h
#define Macro_h

//--------------------------------- 导航栏 --------------------------------------------
#define Bar_Tint_Color          COLOR_RGB(252, 120, 0)
#define Tint_Color              [UIColor whiteColor]
#define Main_View_Color         COLOR_RGB(245, 245, 245)

#define Label_Text_Color        [UIColor redColor]
#define Label_Background_Color  [UIColor redColor]

#define Button_Text_Color       [UIColor redColor]
#define Button_Background_Color [UIColor redColor]

#define Table_View_Background_Color [UIColor whiteColor]
//RGB
#define COLOR_RGB(R, G, B)      [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:1.0]
//RGBA
#define COLOR_RGB_A(R, G, B, A) [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:A]
//ARC_RGB
#define COLOR_ARC_RGB [UIColor colorWithRed:arc4random() % 256 / 255.0 green:arc4random() % 256 / 255.0 blue:arc4random() % 256 / 255.0 alpha:1.0]
//微信登录
#define WX_Login_Button_color COLOR_RGB(78, 176, 18)
//新浪
#define XL_Login_Button_color COLOR_RGB(233, 108, 23)
//腾讯微博
#define TX_Login_Button_color COLOR_RGB(0, 197, 168)


#define isLogin 0

//=================================FONT=============================================
#define FONT_SIZE_14 [UIFont systemFontOfSize:14]
#define FONT_SIZE_15 [UIFont systemFontOfSize:15]
#define FONT_SIZE_16 [UIFont systemFontOfSize:16]
#define FONT_SIZE_17 [UIFont systemFontOfSize:17]
#define FONT_SIZE_20 [UIFont systemFontOfSize:20]
#define FONT_SIZE_30 [UIFont systemFontOfSize:30]

//=================================SIZE=============================================
#define SCREEN_BOUNDS [UIScreen mainScreen].bounds
#define SCREEN_SIZE   [UIScreen mainScreen].bounds.size
#define SCREEN_WIDTH  [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
#define VIEW_WIDTH    self.bounds.size.width


#endif /* Macro_h */
