//
//  MeViewController.m
//  Bee
//
//  Created by steam on 2017/1/21.
//  Copyright © 2017年 steam. All rights reserved.
//

#import "MeViewController.h"
#import "MeScrollView.h"

@interface MeViewController ()

@property (nonatomic , strong) MeScrollView * meScrollView;

@end

@implementation MeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createView];
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear: animated];
    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleDefault;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark -- createView

-(void)createView {
    //设置navigation
    [self setRightItem:nil imageName:@"v2_my_settings_icon" selectedImageName:nil action:@selector(pushToSettingViewController)];
    
    //加载主界面
    self.meScrollView = [[MeScrollView alloc] init];
    [self.view addSubview: self.meScrollView];
    self.meScrollView.contentSize = CGSizeMake(kScreenWidth ,  kScreenHeight );
    [self.meScrollView addTarget:self action:@selector(clickListenerCerten:)];
}

#pragma  mark -- 点击事件
-(void) clickListenerCerten:(UIView *) item{
    switch (item.tag) {
            
        case 1025:
            [self clickedBalanceItem];
            break;
        case 1026:
            [self clickedDiscountItem];
            break;
        case 1027:
            [self clickedBonusPointItem];
            break;
        case 1028:
            [self clickedAccessAllOrderItem];
            break;
        case 1029:
            [self clickedObligationItem];
            break;
        case 1030:
            [self clickedReceivingItem];
            break;
        case 1031:
            [self clickedEvaluationItem];
            break;
        case 1032:
            [self clickedFeedbackItem];
            break;
        case 1033:
            [self clickedMemberCenterItem];
            break;
        case 1034:
            [self clickedBonusShopItem];
            break;
        case 1035:
            [self clickedGoodCollectionItem];
            break;
        case 1036:
            [self clickedShopCollectionItem];
            break;
        case 1037:
            [self clickedUserAdressItem];
            break;
        case 1038:
            [self clickedServiceItem];
            break;
        default:
            break;
    }
    
}

//点击余额
-(void)clickedBalanceItem{
    NSLog(@"clickedBalanceItem");
}
//点击优惠卷
-(void)clickedDiscountItem{
    NSLog(@"clickedDiscountItem");
}
//点击积分
-(void)clickedBonusPointItem{
    NSLog(@"clickedBonusPointtem");
}
//点击全部订单
-(void)clickedAccessAllOrderItem{
    NSLog(@"clickedAccessAllOrderItem");
}
//点击待付款
-(void)clickedObligationItem{
    NSLog(@"clickedObligationItem");
}
//点击待收货
-(void)clickedReceivingItem{
    NSLog(@"clickedReceivingItem");
}
//点击待评价
-(void)clickedEvaluationItem{
    NSLog(@"clickedEvaluationItem");
}
//点击售后反馈
-(void)clickedFeedbackItem{
    NSLog(@"clickedFeedbackItem");
}
//点击会员中心
-(void)clickedMemberCenterItem{
    NSLog(@"clickedMemberCenterItem");
}
//点击积分商城
-(void)clickedBonusShopItem{
    NSLog(@"clickedBonusShopItem");
}
//点击商品收藏
-(void)clickedGoodCollectionItem{
    NSLog(@"clickedGoodCollectionItem");
}
//点击积分商城
-(void)clickedShopCollectionItem{
    NSLog(@"clickedShopCollectionItem");
}
//点击积分商城
-(void)clickedUserAdressItem{
    NSLog(@"clickedUserAdressItem");
}
//点击积分商城
-(void)clickedServiceItem{
    NSLog(@"clickedServiceItem");
}

//点击设置
-(void)pushToSettingViewController{
    NSLog(@"pushToSettingViewController");
}

@end
