//
//  CommonPromptView.m
//  Bee
//
//  Created by steam on 2017/1/14.
//  Copyright © 2017年 steam. All rights reserved.
//

#import "CommonPromptView.h"

@interface CommonPromptView ()

//提示图片
@property UIImageView * contentImageView;
//提示文字
@property UILabel * contentLabel;
//交互处理按钮
@property UIButton * setterButton;

@end

@implementation CommonPromptView

-(instancetype)init{
    self = [super init];
    if (self) {
        self.frame = KScreenBounds;
        self.backgroundColor = ThemeBackgroudColor;
        [self createView];
    }
    return  self;
}

#pragma  mark -- createView

-(void)createView{
    UIImageView * imageView = [[UIImageView alloc] initWithFrame:CGRectMake(225 *  KScreenUnit,300 * KScreenUnit ,300 * KScreenUnit , 300 * KScreenUnit)];
    self.contentImageView = imageView;
    [self addSubview:imageView];
    
    UILabel * label = [[UILabel alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(imageView.frame) + 40 * KScreenUnit, kScreenWidth, 32)];
    label.textColor = TextGrayColor;
    label.font = TextNormalFont;
    label.textAlignment = NSTextAlignmentCenter;
    self.contentLabel = label;
    [self addSubview:label];
    
    UIButton * button = [[UIButton alloc] initWithFrame:CGRectMake(225 * KScreenUnit,CGRectGetMaxY(label.frame) + 33 * KScreenUnit, 300 * KScreenUnit, 64 * KScreenUnit)];
    button.backgroundColor = ButtonYellowColor;
    button.layer.cornerRadius = 3.0f;
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    button.titleLabel.font = TextNormalFont;
    button.titleLabel.textAlignment = NSTextAlignmentCenter;
    self.setterButton = button;
    [self addSubview:button];
}

#pragma  mark -- 外部设置内容方法

/**
 设置视图的内容
 
 @param imageName 图片名称
 @param promptText 提示内容
 @param buttonText 按钮内容
 @param action 按钮点击事件
 */
-(void)setViewContentWithImagename : (NSString *) imageName promptText :(NSString *) promptText buttonText : (NSString *) buttonText setter : (SEL) action target:(id)target{
    UIImage * image = [UIImage imageNamed:imageName];
    image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.contentImageView.image = image;
    
    self.contentLabel.text = promptText ;
    
    [self.setterButton setTitle:buttonText forState:UIControlStateNormal];
    [self.setterButton addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
}


@end
