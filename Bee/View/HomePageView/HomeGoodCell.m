//
//  HomeGoodCell.m
//  Bee
//
//  Created by steam on 2017/1/30.
//  Copyright © 2017年 steam. All rights reserved.
//

#import "HomeGoodCell.h"

@interface HomeGoodCell()

@property (nonatomic, strong)   UIImageView * goodImageView;
@property (nonatomic, strong)   UILabel * goodNameLabel;
@property (nonatomic, strong)   UILabel * goodPriceLabel;
@property (nonatomic, strong)   UIButton * appendGoodButton;

@end

@implementation HomeGoodCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self createView];
    }
    return self;
}

#pragma  mark -- createView

-(void)createView {
    //商品图片
    self.goodImageView =  [[UIImageView alloc] initWithFrame:CGRectMake( (HomeGoodCellWidth - 200 * KScreenUnit) / 2, 0, 200 * KScreenUnit, 200 * KScreenUnit)];
    [self addSubview:self.goodImageView];
    
    //商品简介
    self.goodNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(30 * KScreenUnit , 20 * KScreenUnit, 200 * KScreenUnit, 0)];
    [self addSubview:self.goodNameLabel];
    self.goodNameLabel.font = TextSmallFont;
    
    //商品价格
    self.goodPriceLabel = [[UILabel alloc] initWithFrame:CGRectMake(30 * KScreenUnit, HomeGoodCellHeight - 30 * KScreenUnit, 200 * KScreenUnit, 26  * KScreenUnit)];
    [self addSubview:self.goodPriceLabel];
    
    //添加到购物车
    self.appendGoodButton = [[UIButton alloc] initWithFrame:CGRectMake(160 * KScreenUnit, 300 * KScreenUnit, 48 * KScreenUnit, 48 * KScreenUnit)];
    [self.appendGoodButton setBackgroundImage:[UIImage imageNamed:@"v2_increase"] forState:UIControlStateNormal];
    [self addSubview:self.appendGoodButton];
    
}

@end
