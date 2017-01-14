//
//  ShoppingCartViewController.m
//  Bee
//
//  Created by steam on 2017/1/14.
//  Copyright © 2017年 steam. All rights reserved.
//

#import "ShoppingCartViewController.h"

@interface ShoppingCartViewController ()

@end

@implementation ShoppingCartViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self createView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma  mark -- creatView
-(void)createView{
    //标题
    [self setTitleWithString:@"购物车"];
    
    //购物车界面
    if ( ![[NSUserDefaults standardUserDefaults] boolForKey:UserDefault_IsLogined]) {
        //未登录
        [self shwoErrorViewWithErrorType:NotLoginIn setter:@selector(presentToLoginVC)];
    }else {
        
    }
    
}

#pragma mark -- 点击事件
//未登录情况下的提示按钮
-(void)presentToLoginVC{
    LoginViewController * loginViewController = [[LoginViewController  alloc] init];
    BaseNavigationController *  baseNavigationController = [[BaseNavigationController alloc] initWithRootViewController:loginViewController];
    [self presentViewController: baseNavigationController animated: YES completion:nil];
}

@end
