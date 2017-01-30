//
//  HomeHeaderView.m
//  Bee
//
//  Created by steam on 2017/1/24.
//  Copyright © 2017年 steam. All rights reserved.
//

#import "HomeHeaderView.h"

#pragma mark -- CustomButton
/**
 *      上面图片下面文字的button
 */

@interface CustomButton : UIButton{
    @private
    UIImageView * imageView;
    UILabel * label;
}

@property (nonatomic, assign) NSString * imageUrl;
@property (nonatomic, assign) NSString * title;

@end

@implementation CustomButton

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self createView:frame];
    }
    return self;
}

#pragma mark -- createView 
-(void) createView : (CGRect) frame {
    imageView = [[UIImageView alloc] init];
    imageView.frame = CGRectMake((frame.size.width - 90 * KScreenUnit) / 2 , 40 * KScreenUnit ,90 * KScreenUnit , 90 * KScreenUnit);
    [self addSubview:imageView];
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(imageView.frame), frame.size.width, frame.size.height - 40 * KScreenUnit - imageView.frame.size.height)];
    label.textColor = [UIColor blackColor];
    label.font = TextSmallFont;
    [self addSubview:label];
    
}
#pragma  mark -- get set
-(void)setImageUrl:(NSString *)imageUrl{
    _imageUrl = imageUrl;
    [imageView sd_setImageWithURL:[NSURL URLWithString:imageUrl]];
}
-(void)setTitle:(NSString *)title{
    label.text = title;
}
-(NSString *)title{
    return  label.text;
}

@end


#pragma mark -- HomeHeaderView

@interface HomeHeaderView()

@property (nonatomic, strong)   JCBannerView * BannerView;
@property (nonatomic, strong)   CustomButton * activityOneItem;
@property (nonatomic, strong)   CustomButton * activityTwoItem;
@property (nonatomic, strong)   CustomButton * activityThreeItem;
@property (nonatomic, strong)   CustomButton * activityFourItem;

@property (nonatomic,strong)    UIImageView * promotionImageView;
@property (nonatomic, strong)   UIButton * promotionOneItem;
@property (nonatomic, strong)   UIButton * promotionTwoItem;

@end

@implementation HomeHeaderView

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.backgroundColor = ThemeGrayColor;
        self.frame = CGRectMake(0, 0, kScreenWidth, 903 * KScreenUnit);
        
        [self createView];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self createView];
    }
    return self;
}

#pragma mark -- createView 
-(void)createView {
    
    //banner
    self.BannerView = [[JCBannerView alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth, 358 * KScreenUnit)];
    [self addSubview:self.BannerView];
    self.BannerView.backgroundColor = [UIColor redColor];
    
    /**
     *      活动区
     */
    UIView * activityContentView = [[UIView alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(self.BannerView.frame), kScreenWidth, 218 * KScreenUnit)];
    activityContentView.backgroundColor = [UIColor whiteColor];
    [self addSubview:activityContentView];
    
    //item 1
    self.activityOneItem = [[CustomButton alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth / 4, activityContentView.height)];
    [activityContentView addSubview:self.activityOneItem];
    //item 2
    self.activityTwoItem = [[CustomButton alloc] initWithFrame:CGRectMake( 1 * kScreenWidth / 4 ,0,kScreenWidth / 4, activityContentView.height)];
    [activityContentView addSubview:self.activityTwoItem];
    //item 3
    self.activityThreeItem = [[CustomButton alloc] initWithFrame:CGRectMake(2 * kScreenWidth / 4, 0,kScreenWidth / 4, activityContentView.height)];
    [activityContentView addSubview:self.activityThreeItem];
    //item 4
    self.activityFourItem = [[CustomButton alloc] initWithFrame:CGRectMake(3 * kScreenWidth / 4, 0,kScreenWidth / 4, activityContentView.height)];
    [activityContentView addSubview:self.activityFourItem];
    
    /**
     *      促销区
     */
    UIView * promotionView = [[UIView alloc] initWithFrame:CGRectMake(0, activityContentView.MaxY + 20 * KScreenUnit , kScreenWidth, 288 * KScreenUnit)];
    promotionView.backgroundColor = [UIColor whiteColor];
    [self addSubview:promotionView];
    
    //图片
    self.promotionImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0,  0,  kScreenWidth, 125 * KScreenUnit)];
    [promotionView addSubview:self.promotionImageView];
    //item1
    self.promotionOneItem = [[UIButton alloc] initWithFrame:CGRectMake(30 * KScreenUnit, self.promotionImageView.MaxY, kScreenWidth / 2 - 30 * KScreenUnit, 146 * KScreenUnit)];
    [promotionView addSubview:self.promotionOneItem];
    //item2
    self.promotionTwoItem = [[UIButton alloc] initWithFrame:CGRectMake(self.promotionOneItem.MaxX, self.promotionImageView.MaxY, kScreenWidth / 2 - 30 * KScreenUnit,146 * KScreenUnit)];
    [promotionView addSubview:self.promotionTwoItem];
    //分割线
    [promotionView addSubview:[UIImageView createLineImageViewWithColor:DividedLineGrayColor Frame:CGRectMake(0, 0, kScreenWidth, 1)]];
    [promotionView addSubview:[UIImageView createLineImageViewWithColor:DividedLineGrayColor Frame:CGRectMake(30 * KScreenUnit, self.promotionImageView.MaxY, kScreenWidth - 60 * KScreenUnit, 1)]];
    [promotionView addSubview:[UIImageView createLineImageViewWithColor:DividedLineGrayColor Frame:CGRectMake(30 * KScreenUnit, self.promotionOneItem.MaxY, kScreenWidth - 60 * KScreenUnit,1 )]];
    [promotionView addSubview:[UIImageView createLineImageViewWithColor:DividedLineGrayColor Frame:CGRectMake(kScreenWidth / 2, self.promotionImageView.MaxY, 1, 146 * KScreenUnit)]];
    
}

#pragma mark -- public interface

@end
