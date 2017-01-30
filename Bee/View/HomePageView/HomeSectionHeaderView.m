//
//  HomeSectionHeaderView.m
//  Bee
//
//  Created by steam on 2017/1/24.
//  Copyright © 2017年 steam. All rights reserved.
//

#import "HomeSectionHeaderView.h"

@interface HomeSectionHeaderView ()
@property (nonatomic, strong)   UILabel * GoodKindLabel;
@property (nonatomic, strong)   UIButton * moreButton;
@property (nonatomic, strong)   UIImageView * detailImageView;
@end

@implementation HomeSectionHeaderView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self createView:frame];
    }
    return self;
}

#pragma mark -- createView
-(void)createView:(CGRect)frame{
    //物品种类
    self.GoodKindLabel = [[UILabel alloc] initWithFrame:CGRectMake((kScreenWidth - 220 * KScreenUnit) / 2, 60 * KScreenUnit, 220 * KScreenUnit, 36 * KScreenUnit)];
    self.GoodKindLabel.font = TextLargeFont;
    self.GoodKindLabel.textColor = [UIColor blackColor];
    self.GoodKindLabel.textAlignment = NSTextAlignmentCenter;
    [self addSubview:self.GoodKindLabel];
    //更多按钮
    self.moreButton = [[UIButton alloc] initWithFrame:CGRectMake(kScreenWidth - 115 * KScreenUnit, 76 * KScreenUnit, 5 * KScreenUnit, 26 )];
    [self.moreButton setTitleColor:TextGrayColor forState:UIControlStateNormal];
    [self.moreButton setTitle:@"更多" forState:UIControlStateNormal];
    self.moreButton.titleLabel.font = TextSmallFont;
    [self addSubview:self.moreButton];
    //更多图片
    UIImageView * goImageView =  [[UIImageView alloc] initWithFrame:CGRectMake(kScreenWidth - 50 * KScreenUnit, self.moreButton.y, 16 * KScreenUnit, 26 * KScreenUnit)];
    goImageView.image = [UIImage imageNamed:@"icon_go"];
    [self addSubview:goImageView ];
    //黄色的线
    [self addSubview:[UIImageView createLineImageViewWithColor:ButtonYellowColor Frame:CGRectMake((kScreenWidth - 38 * KScreenUnit) / 2, self.GoodKindLabel.MaxY + 20 * KScreenUnit, 38 * KScreenUnit, 8 * KScreenUnit)]];
    //推广图片
    self.detailImageView = [[UIImageView alloc] initWithFrame:CGRectMake(32 * KScreenUnit,152 * KScreenUnit , kScreenWidth - 64 *   KScreenUnit, 180 * KScreenUnit)];
    [self addSubview:self.detailImageView];
    
}
#pragma mark -- public interface 


@end
