//
//  GradientViewController.h
//  Bee
//
//  Created by steam on 2017/1/14.
//  Copyright © 2017年 steam. All rights reserved.
//

#import "BaseViewController.h"

@interface GradientViewController : BaseViewController


//设置颜色可变的头部
-(void)setCustomMode;

//恢复原本头部
-(void)setNormalMode;

//设置navigationBar 的颜色
-(void)setNavigationBarColorWithColor : (UIColor *) color;

@end
