//
//  UIImageView+Extension.h
//  Bee
//
//  Created by steam on 2017/1/22.
//  Copyright © 2017年 steam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (Extension)



/**
 生成一条线

 @param color 线条颜色
 @param frame ..
 @return 线条
 */
+(UIImageView *) createLineImageViewWithColor : (UIColor *) color Frame : (CGRect) frame ;

@end
