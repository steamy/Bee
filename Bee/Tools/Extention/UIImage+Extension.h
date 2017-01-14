//
//  UIImage+Extension.h
//  Bee
//
//  Created by steam on 2017/1/14.
//  Copyright © 2017年 steam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Extension)


/**
    根据颜色获取图片

 @param color 颜色
 @return  图片
 */
+(UIImage *)createImageWithColor:(UIColor *) color;

@end
