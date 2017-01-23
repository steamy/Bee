//
//  UIButton+Extension.h
//  Bee
//
//  Created by steam on 2017/1/14.
//  Copyright © 2017年 steam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Extension)


/**
    创建一个navigation 的返回按钮

 @return 返回按钮对象
 */
+(UIButton *)createBackButton;

/**
 创建一个带图片和文字的按钮

 @param frame button 的frame
 @param imageName 图片名字
 @param imageSize 图片的大小
 @param title 文字
 @param font 文字的字体大小
 @return button
 */
+(UIButton *)createImageButtonWithFrame : (CGRect) frame
                                ImageName: (NSString *)  imageName
                                ImageSize : (CGSize) imageSize
                                  Title : (NSString *) title
                              TitleFont : (UIFont *)font;

@end
