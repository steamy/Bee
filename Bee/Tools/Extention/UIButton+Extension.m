//
//  UIButton+Extension.m
//  Bee
//
//  Created by steam on 2017/1/14.
//  Copyright © 2017年 steam. All rights reserved.
//

#import "UIButton+Extension.h"


#define imageY 36 * KScreenUnit
@implementation UIButton (Extension)

+(UIButton *) createBackButton {
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0, 0, 30, 40);

    UIImage * returnImage = [UIImage imageNamed:@"v2_goback"];
    returnImage = [returnImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    [button setImage:returnImage forState:UIControlStateNormal];
    
    return button;
}

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
                              TitleFont : (UIFont *)font{
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = frame;
    
    UIImageView * imageView = [[UIImageView alloc] initWithFrame:CGRectMake((frame.size.width - imageSize.width) / 2, imageY, imageSize.width, imageSize.height)];
    imageView.image = [UIImage imageNamed:imageName];
    [button addSubview:imageView];
    
    UILabel * label = [[UILabel alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(imageView.frame) , frame.size.width, frame.size.height - CGRectGetMaxY(imageView.frame) )];
    label.textAlignment = NSTextAlignmentCenter;
    label.text = title;
    label.textColor = [UIColor blackColor];
    label.font = font;
    [button addSubview:label];
    
    
    return button;
}

@end
