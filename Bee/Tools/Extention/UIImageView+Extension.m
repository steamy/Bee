//
//  UIImageView+Extension.m
//  Bee
//
//  Created by steam on 2017/1/22.
//  Copyright © 2017年 steam. All rights reserved.
//

#import "UIImageView+Extension.h"

@implementation UIImageView (Extension)




/**
 生成一条线
 
 @param color 线条颜色
 @param frame ..
 @return 线条
 */
+(UIImageView *) createLineImageViewWithColor : (UIColor *) color Frame : (CGRect) frame{
    UIImageView * lineImageView = [[UIImageView  alloc] init];
    lineImageView.backgroundColor = color;
    
    lineImageView.frame = frame;
    
    return lineImageView;
}

@end
