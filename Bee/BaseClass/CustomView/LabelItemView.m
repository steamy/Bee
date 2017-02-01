//
//  LabelItemView.m
//  Bee
//
//  Created by steam on 2017/1/22.
//  Copyright © 2017年 steam. All rights reserved.
//

#import "LabelItemView.h"

@interface LabelItemView ()

@property (nonatomic, strong) UILabel * infoLabel;
@property (nonatomic, strong) UILabel * constLabel;
@property (nonatomic, strong) UIButton * maskButton;

@end

@implementation LabelItemView
#pragma  mark -- initial
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self createView];
    }
    return self;
}

#pragma mark -- createView

-(void)createView{
    
    self.backgroundColor = [UIColor whiteColor];
    
    self.infoLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 16, self.frame.size.width, 30 * KScreenUnit)];
    self.infoLabel.textColor = [UIColor blackColor];
    self.infoLabel.font = TextNormalFont;
    self.infoLabel.textAlignment = NSTextAlignmentCenter;
    [self addSubview:self.infoLabel];
    
    self.constLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(self.infoLabel.frame) + 8 , self.frame.size.width, 24 * KScreenUnit)];
    self.constLabel.textAlignment = NSTextAlignmentCenter;
    self.constLabel.textColor = UIColorFromRGB(0x999999);
    self.constLabel.font = [UIFont systemFontOfSize:24 * KScreenUnit];
    [self addSubview:self.constLabel];
    
    self.maskButton = [[UIButton alloc] initWithFrame:self.bounds ];
    self.maskButton.backgroundColor = [UIColor clearColor ];
    [self addSubview:self.maskButton ];
}

#pragma mark -- public interface

/**
 *      get set
 */

-(void)setConstTitle:(NSString *)constTitle{
    _constLabel.text = constTitle;
}

-(NSString *)constTitle{
    return _constLabel.text;
}

-(void)setInfoTitle:(NSString *)infoTitle{
    _infoLabel.text = infoTitle;
}

-(NSString *)infoTitle{
    return _infoLabel.text;
}


-(void)setItemTag:(NSInteger )itemTag{
    _maskButton.tag = itemTag;
}

-(NSInteger)itemTag{
    return _maskButton.tag;
}


/**
 添加点击事件
 
 @param target 对象
 @param action 动作
 */
-(void)addTarget:(id) target action:(SEL) action{
    [self.maskButton addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
}


@end
