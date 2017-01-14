//
//  UIImage+Extension.m
//  Bee
//
//  Created by steam on 2017/1/14.
//  Copyright © 2017年 steam. All rights reserved.
//

#import "UIImage+Extension.h"

@implementation UIImage (Extension)


/**
 根据颜色获取图片
 
 @param color 颜色
 @return  图片
 */
+(UIImage *)createImageWithColor:(UIColor *) color{
    CGRect rect = CGRectMake(0, 0, 1, 1);
    
    UIGraphicsBeginImageContext(rect.size);
    
    CGContextRef context =  UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, color.CGColor);
    CGContextFillRect(context, rect);
    
    UIImage * image = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return image;
}

@end
