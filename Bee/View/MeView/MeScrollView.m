//
//  MeScrollView.m
//  Bee
//
//  Created by steam on 2017/1/21.
//  Copyright © 2017年 steam. All rights reserved.
//

#import "MeScrollView.h"
#import "LabelItemView.h"
#import <UIKit/UIKit.h>


#pragma mark -- UIButton (MeScrollView)
@interface UIButton (MeScrollView)

+(UIButton *)createTypeTwoButtonWithFrame : (CGRect) frame Title:(NSString *) title IamgeName : (NSString *) imageName;

+(UIButton *)createCellTypeButtonWithFrame : (CGRect) frame Title : (NSString *) title iamgeName:(NSString *) imageName;

@end

@implementation UIButton (MeScrollView)

+(UIButton *)createTypeTwoButtonWithFrame:(CGRect)frame Title:(NSString *)title IamgeName:(NSString *)imageName{
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    
    button.frame = frame;
    
    //图片
    UIImageView * imageView = [[UIImageView alloc] initWithFrame:CGRectMake(55 * KScreenUnit, (frame.size.height - 64 * KScreenUnit) /2, 64 * KScreenUnit, 64 * KScreenUnit)];
    imageView.image = [UIImage imageNamed:imageName];
    [button addSubview:imageView];
    
    //文字
    UILabel * label = [[UILabel alloc] initWithFrame:CGRectMake(138 * KScreenUnit, 56 * KScreenUnit, 150 * KScreenUnit, 30 * KScreenUnit)];
    label.font = TextNormalFont;
    label.textColor = [UIColor blackColor];
    label.text = title;
    label.textAlignment = NSTextAlignmentLeft;
    [button addSubview:label];
    
    return  button;
}

+(UIButton *)createCellTypeButtonWithFrame:(CGRect)frame Title:(NSString *)title iamgeName:(NSString *)imageName{
    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = frame;
    
    //图片
    UIImageView * iconImageView = [[UIImageView alloc] initWithFrame:CGRectMake(30 * KScreenUnit, (frame.size.height - 38 * KScreenUnit) / 2, 36 * KScreenUnit, 38 * KScreenUnit)];
    iconImageView.image = [UIImage imageNamed:imageName];
    [button addSubview:iconImageView];
    
    UIImageView * goImageView = [[UIImageView alloc] initWithFrame:CGRectMake(700 * KScreenUnit,37 * KScreenUnit , 16 * KScreenUnit , 26 * KScreenUnit)];
    goImageView.image = [UIImage imageNamed:@"icon_go"];
    [button addSubview:goImageView];
    
    //title
    UILabel * label = [[UILabel alloc] initWithFrame:CGRectMake(90 * KScreenUnit, 0, 150 * KScreenUnit , 100 * KScreenUnit )];
    label.text = title;
    label.textColor = [UIColor blackColor ];
    label.textAlignment = NSTextAlignmentLeft;
    [button addSubview: label];
    
    return  button;
}


@end


#pragma mark -- MeScrollView

@interface MeScrollView()

@property (nonatomic ,strong) UIImageView * avatorImageView;
@property (nonatomic, strong) UILabel * phoneLabel;
@property (nonatomic, strong) UILabel * memberLevelLabel;
@property (nonatomic, strong) LabelItemView * balanceItem;
@property (nonatomic, strong) LabelItemView * discountItem;
@property (nonatomic, strong) LabelItemView * bonusPointItem;

@property (nonatomic ,strong ) UIButton * accessAllOrderItem;
@property (nonatomic, strong) UIButton * obligationItem;
@property (nonatomic, strong)   UIButton * receivingItem;
@property (nonatomic, strong)   UIButton * evaluatingItem;
@property (nonatomic, strong)   UIButton * feedbackItem;

@property (nonatomic ,strong)   UIButton * memberCenterItem;
@property (nonatomic, strong)   UIButton * bonusShopItem;

@property (nonatomic, strong) UIButton * goodCollectionItem;
@property (nonatomic, strong) UIButton * shopCollectionItem;
@property (nonatomic, strong) UIButton * userAddressItem;
@property (nonatomic, strong) UIButton * serviceItem;


@end

@implementation MeScrollView


- (instancetype)init
{
    self = [super init];
    if (self) {
        [self createView];
    }
    return self;
}

#pragma  mark -- createView 
-(void) createView{
    //背景颜色
    self.backgroundColor = ThemeGrayColor;
    //大小
    self.frame = KScreenBounds;
    
    //头部背景图片
    UIImageView * headerImageView = [[UIImageView alloc ] initWithFrame:CGRectMake(0, -64 , kScreenWidth, 320 * KScreenUnit)];
    headerImageView.image = [UIImage imageNamed:@"userAccountIcon"];
    [self addSubview:headerImageView];
    
    //头像
    self.avatorImageView = [[UIImageView alloc] initWithFrame:CGRectMake(325 * KScreenUnit, (-42) * KScreenUnit, 100 * KScreenUnit, 100 * KScreenUnit)];
    self.avatorImageView.layer.cornerRadius = 50 * KScreenUnit;
    self.avatorImageView.image = [UIImage imageNamed:@"v2_my_avatar"];
    [self addSubview: self.avatorImageView];
    
    //电话
    self.phoneLabel  = [[UILabel alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(self.avatorImageView.frame) + 8 , kScreenWidth, 30 * KScreenUnit)];
    self.phoneLabel.textColor = [UIColor whiteColor ];
    self.phoneLabel.textAlignment = NSTextAlignmentCenter;
    self.phoneLabel.font = TextNormalFont;
    self.phoneLabel.text = @"未登录";
    [self addSubview:self.phoneLabel];
    
    // 会员等级
    self.memberLevelLabel = [[UILabel alloc] initWithFrame:CGRectMake(315 * KScreenUnit, CGRectGetMaxY(self.phoneLabel.frame) + 8 , 120 * KScreenUnit, 32 * KScreenUnit)];
    self.memberLevelLabel.textAlignment = NSTextAlignmentCenter;
    self.memberLevelLabel.textColor = UIColorFromRGB(0xb1b1b1);
    self.memberLevelLabel.layer.cornerRadius = 16 * KScreenUnit;
    self.memberLevelLabel.layer.masksToBounds = YES;
    self.memberLevelLabel.text = @"V0会员";
    self.memberLevelLabel.font = [UIFont systemFontOfSize:20 * KScreenUnit];
    self.memberLevelLabel.backgroundColor = UIColorFromRGB(0xfff9d3);
    [self addSubview:self.memberLevelLabel];
    
    /**
     *      账户信息
     */
    
    // 余额
    self.balanceItem = [[LabelItemView alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(headerImageView.frame), kScreenWidth / 3, 130 * KScreenUnit)];
    self.balanceItem.infoTitle = @"￥0.00";
    self.balanceItem.constTitle = @"余额";
    self.balanceItem.itemTag = 1025;
    
    //优惠券
    self.discountItem = [[LabelItemView alloc] initWithFrame:CGRectMake(kScreenWidth / 3, CGRectGetMaxY(headerImageView.frame), kScreenWidth / 3, 130 * KScreenUnit)];
    self.discountItem.infoTitle = @"0";
    self.discountItem.constTitle = @"优惠卷";
    self.discountItem.itemTag = 1026;
    
    //积分
    self.bonusPointItem = [[LabelItemView alloc] initWithFrame:CGRectMake(2 * kScreenWidth /3,CGRectGetMaxY(headerImageView.frame), kScreenWidth / 3, 130 * KScreenUnit)];
    self.bonusPointItem.infoTitle = @"0";
    self.bonusPointItem.constTitle = @"积分";
    self.bonusPointItem.itemTag = 1027;
    
    [self addSubview:self.balanceItem];
    [self addSubview:self.discountItem  ];
    [self addSubview:self.bonusPointItem];
    
    
    /**
     *     订单信息
     */
    UIView * orderContentView = [[UIView alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(self.bonusPointItem.frame) + 20 * KScreenUnit, kScreenWidth, 236 * KScreenUnit)];
    orderContentView.backgroundColor = [UIColor whiteColor];
    [self addSubview:orderContentView];
    
    //全部订单
    [orderContentView addSubview:[self createAllOrderView]];
    
    //分割线
    [orderContentView addSubview:[UIImageView createLineImageViewWithColor:DividedLineGrayColor Frame:CGRectMake(20 * KScreenUnit, 90 * KScreenUnit, kScreenWidth - 20 * KScreenUnit, 1)]];
    
    //代付款
    self.obligationItem = [UIButton createImageButtonWithFrame:CGRectMake(0, 90 * KScreenUnit, kScreenWidth /4 , 146 * KScreenUnit) ImageName:@"icon_daifukuan" ImageSize:CGSizeMake(50 * KScreenUnit, 48 * KScreenUnit) Title:@"待付款" TitleFont:TextSmallFont];
    self.obligationItem.tag = 1029;
    [orderContentView addSubview:self.obligationItem];
    
    //带收货
    self.receivingItem = [UIButton createImageButtonWithFrame:CGRectMake(1 * kScreenWidth / 4, 90 * KScreenUnit, kScreenWidth /4 , 146 * KScreenUnit) ImageName:@"icon_daishouhuo" ImageSize:CGSizeMake(50 * KScreenUnit, 48 * KScreenUnit) Title:@"待收货" TitleFont:TextSmallFont];
    self.receivingItem.tag = 1030;
    [orderContentView addSubview:self.receivingItem];
    
    //代评价
    self.evaluatingItem = [UIButton createImageButtonWithFrame:CGRectMake(2 * kScreenWidth / 4, 90 * KScreenUnit, kScreenWidth /4 , 146 * KScreenUnit) ImageName:@"icon_daipingjia" ImageSize:CGSizeMake(50 * KScreenUnit, 48 * KScreenUnit) Title:@"待评价" TitleFont:TextSmallFont];
    self.evaluatingItem.tag = 1031;
    [orderContentView addSubview:self.evaluatingItem];
    
    //售后
    self.feedbackItem = [UIButton createImageButtonWithFrame:CGRectMake(3 * kScreenWidth / 4, 90 * KScreenUnit, kScreenWidth /4 , 146 * KScreenUnit) ImageName:@"icon_tuikuan" ImageSize:CGSizeMake(50 * KScreenUnit, 48 * KScreenUnit) Title:@"售后/退款" TitleFont:TextSmallFont];
    self.feedbackItem.tag = 1032;
    [orderContentView addSubview:self.feedbackItem];
    
    /**
     * 会员信息
     */
    UIView * memberContentView = [[UIView alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(orderContentView.frame) + 20 * KScreenUnit, kScreenWidth, 180 * KScreenUnit)];
    memberContentView.backgroundColor = [UIColor whiteColor];
    [self addSubview:memberContentView];
    
    //会员中心
    self.memberCenterItem = [UIButton createTypeTwoButtonWithFrame:CGRectMake(0, 0, kScreenWidth / 2, 180 * KScreenUnit) Title:@"会员中心" IamgeName:@"memberCenter"];
    self.memberCenterItem.tag = 1033;
    [memberContentView addSubview:self.memberCenterItem];
    //分割线
    [memberContentView addSubview:[UIImageView createLineImageViewWithColor:DividedLineGrayColor Frame:CGRectMake(kScreenWidth / 2, 20 * KScreenUnit, 1, 140 * KScreenUnit)]];
    //积分商城
    self.bonusShopItem = [UIButton createTypeTwoButtonWithFrame:CGRectMake(kScreenWidth / 2, 0, kScreenWidth / 2, 180 * KScreenUnit) Title:@"积分商城" IamgeName:@"Integral-mall"];
    self.bonusShopItem.tag = 1034;
    [memberContentView addSubview:self.bonusShopItem ];
    
    /**
     *  个人收藏
     */
    UIView * personalContentView = [[UIView alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(memberContentView.frame) + 20 * KScreenUnit, kScreenWidth, 400 * KScreenUnit)];
    personalContentView.backgroundColor = [UIColor whiteColor];
    [self addSubview:personalContentView];
    
    //商品收藏
    self.goodCollectionItem = [UIButton createCellTypeButtonWithFrame:CGRectMake(0, 0, kScreenWidth, 100 * KScreenUnit) Title:@"商品收藏" iamgeName:@"v2_my_goodsCollection"];
    self.goodCollectionItem.tag = 1035;
    [personalContentView addSubview:self.goodCollectionItem];
    //店铺收藏
    self.shopCollectionItem = [UIButton createCellTypeButtonWithFrame:CGRectMake(0, 100 * KScreenUnit , kScreenWidth, 100 * KScreenUnit) Title:@"店铺收藏" iamgeName:@"v2_my_storeCollection"];
    self.shopCollectionItem.tag = 1036;
    [personalContentView addSubview:self.shopCollectionItem];
    // 收货地址
    self.userAddressItem = [UIButton createCellTypeButtonWithFrame:CGRectMake(0, 200 * KScreenUnit, kScreenWidth, 100 * KScreenUnit) Title:@"收货地址" iamgeName:@"v2_my_address_icon"];
    self.userAddressItem.tag = 1037;
    [personalContentView addSubview:self.userAddressItem];
    // 客服/反馈
    self.serviceItem = [UIButton createCellTypeButtonWithFrame:CGRectMake(0, 300 * KScreenUnit, kScreenWidth, 100 * KScreenUnit) Title:@"客服/反馈" iamgeName:@"v2_my_feedback_icon"];
    self.serviceItem.tag = 1038;
    [personalContentView addSubview:self.serviceItem];
    
    //分割线
    [personalContentView addSubview:[UIImageView createLineImageViewWithColor:DividedLineGrayColor Frame:CGRectMake(20 * KScreenUnit, 100 * KScreenUnit, kScreenWidth - 20 * KScreenUnit, 1)]];
    [personalContentView addSubview:[UIImageView createLineImageViewWithColor:DividedLineGrayColor Frame:CGRectMake(20 * KScreenUnit, 200 * KScreenUnit, kScreenWidth - 20 * KScreenUnit, 1)]];
    [personalContentView addSubview:[UIImageView createLineImageViewWithColor:DividedLineGrayColor Frame:CGRectMake(20 * KScreenUnit, 300 * KScreenUnit, kScreenWidth - 20 * KScreenUnit, 1)]];

}

-(UIView *)createAllOrderView{
    UIView * view = [[UIView alloc] init];
    view.frame = CGRectMake(0, 0, kScreenWidth, 90 * KScreenUnit);
    
    UILabel * mainLabel = [[UILabel alloc] initWithFrame:CGRectMake(30 * KScreenUnit, 0, 200, view.frame.size.height)];
    mainLabel.font = TextNormalFont;
    mainLabel.textColor = [UIColor blackColor];
    mainLabel.text = @"全部订单";
    mainLabel.textAlignment = NSTextAlignmentLeft;
    [view addSubview:mainLabel];
    
    UILabel * detailLabel = [[UILabel alloc] initWithFrame:CGRectMake(525 * KScreenUnit, 0, 150  * KScreenUnit, 90 * KScreenUnit )];
    detailLabel.font = TextSmallFont;
    detailLabel.textColor = TextGrayColor;
    detailLabel.text = @"查看全部订单";
    detailLabel.textAlignment = NSTextAlignmentRight;
    [view addSubview:detailLabel];
    
    UIImageView * directImageView = [[UIImageView alloc] initWithFrame:CGRectMake(CGRectGetMaxX(detailLabel.frame) + 10, 32 * KScreenUnit, 16 * KScreenUnit, 26 * KScreenUnit)];
    directImageView.image = [UIImage imageNamed:@"icon_go"];
    [view addSubview:directImageView];
    
    self.accessAllOrderItem = [[UIButton alloc] initWithFrame:view.bounds];
    self.accessAllOrderItem.tag = 1028;
    [view addSubview:self.accessAllOrderItem];
    
    return  view;
}


#pragma mark -- public interface


/** 添加点击事件
 *
 */

-(void) addTarget : (id) target action:(SEL)action{
    
    [self.balanceItem addTarget:target action:action];
    [self.bonusPointItem   addTarget:target action:action];
    [self.discountItem addTarget:target action:action];
    
    [self.accessAllOrderItem addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [self.obligationItem addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [self.receivingItem addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [self.evaluatingItem addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [self.feedbackItem addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    [self.memberCenterItem addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [self.bonusShopItem addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    [self.goodCollectionItem addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
     [self.shopCollectionItem addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
     [self.userAddressItem addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
     [self.serviceItem addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
}



@end
