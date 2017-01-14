//
//  UIButton+Extension.m
//  Bee
//
//  Created by steam on 2017/1/14.
//  Copyright © 2017年 steam. All rights reserved.
//

#import "UIButton+Extension.h"

@implementation UIButton (Extension)

+(UIButton *) createBackButton {
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0, 0, 30, 40);

    UIImage * returnImage = [UIImage imageNamed:@"v2_goback"];
    returnImage = [returnImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    [button setImage:returnImage forState:UIControlStateNormal];
    
    return button;
}

@end
