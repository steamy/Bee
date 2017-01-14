//
//  UIConstHeader.h
//  Bee
//
//  Created by steam on 2017/1/13.
//  Copyright © 2017年 steam. All rights reserved.
//

#ifndef UIConstHeader_h
#define UIConstHeader_h


/**
*      定义APP UI相关的常量
*/


/**
 *      屏幕尺寸
 */
#define KScreenBounds [UIScreen mainScreen].bounds
#define kScreenWidth [UIScreen mainScreen].bounds.size.width//屏幕宽度
#define kScreenHeight [UIScreen mainScreen].bounds.size.height//屏幕高度
#define KScreenUnit ([UIScreen mainScreen].bounds.size.width)/750//屏幕单位

/**
 *
 *16进制转颜色
 * */
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000)>>16))/255.0 green:((float)((rgbValue & 0xFF00)>>8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

/**
 * 16进制转颜色+透明度定义
 */
#define UIColorFromRGBAndAlpha(rgbValue, alphaValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:alphaValue]


#define HEXCOLOR(rgbValue)      [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16)) / 255.0 green:((float)((rgbValue & 0xFF00) >> 8)) / 255.0 blue:((float)(rgbValue & 0xFF)) / 255.0    alpha:1.0]

/**
 *      颜色
 */

//导航颜色
#define NavigationColor_White  UIColorFromRGB(0xffffff)  //导航颜色—白
#define NavigationColor_Yellow UIColorFromRGB(0xffd600)//导航颜色-黄
#define NavigationTitleColor  UIColorFromRGB(0x262626)  //导航字体颜色

// 背景颜色
#define ThemeBackgroudColor UIColorFromRGB(0xffffff)
#define  ThemeGrayColor UIColorFromRGB(0xebebeb)

// 文字颜色
#define TextBlackColor  UIColorFromRGB(0x262626)
#define TextGrayColor   UIColorFromRGB(0xb2b2b2)

//黄色button颜色
#define ButtonYellowColor UIColorFromRGB(0xffd800) 

/**
 *      文字大小
 */

#define TextLargeFont  [UIFont systemFontOfSize:36 * KScreenUnit]
#define TextNormalFont  [UIFont systemFontOfSize:30 * KScreenUnit]
#define TextSmallFont  [UIFont systemFontOfSize:24 * KScreenUnit]

#define TextNavigationTitleFont [UIFont systemFontOfSize:33 * KScreenUnit]


#endif /* UIConstHeader_h */
