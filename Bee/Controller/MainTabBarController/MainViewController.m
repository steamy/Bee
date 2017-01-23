//
//  MainViewController.m
//  Bee
//
//  Created by steam on 2017/1/13.
//  Copyright © 2017年 steam. All rights reserved.
//

#import "MainViewController.h"
#import "BaseNavigationController.h"
#import "HomeViewController.h"
#import "LoginViewController.h"
#import "ShoppingCartViewController.h"
#import "MeViewController.h"

BOOL  isFirstAppearance = YES;

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self createView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    if (isFirstAppearance) {
        NSDictionary * containers = [self createViewContainers];
        [self createCustomIcons:containers];
        isFirstAppearance = NO;
    }
}

#pragma  mark -- createView

-(void)createView{
    [self addChildViewController:[HomeViewController new] title: @"首页" imageName: @"v2_home" tag:0];
    [self addChildViewController:[BaseViewController new] title: @"闪送超市" imageName: @"v2_order" tag:1];
    [self addChildViewController:[ShoppingCartViewController new] title: @"购物车" imageName: @"shopCart" tag:2];
    [self addChildViewController:[MeViewController new] title: @"我的" imageName: @"v2_my" tag:3];
}

-(void)addChildViewController:(UIViewController *)childController title : (NSString *) title imageName : (NSString *) imageName tag : (int) tag{
    AnimationTabBarItem * item = [[AnimationTabBarItem alloc]  initWithTitle: title  image:[UIImage imageNamed:imageName] selectedImage: [UIImage imageNamed: [NSString stringWithFormat:@"%@_selected",imageName] ]];
    
    [self.iconsImageName addObject:imageName];
    [self.iconsSelectedImageName addObject: [NSString stringWithFormat:@"%@_selected",imageName]];
    
    item.tag = tag;
    
    item.animation = [[BounceAnimation alloc] init];
    item.animation.textSelectedColor = [UIColor grayColor];
    childController.tabBarItem = item;
    
    BaseNavigationController * baseViewController  = [[BaseNavigationController alloc] initWithRootViewController: childController];
    [self addChildViewController:baseViewController];
}



@end
