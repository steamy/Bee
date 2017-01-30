//
//  GradientViewController.m
//  Bee
//
//  Created by steam on 2017/1/14.
//  Copyright © 2017年 steam. All rights reserved.
//

/**
 *      navigation 颜色可变的controller
 */


#import "GradientViewController.h"


@interface GradientViewController ()


@end

@implementation GradientViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}
-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
}

#pragma mark -- set navigation color mode
//设置颜色可变的头部
-(void)setCustomMode{
    [[[self.navigationController.navigationBar subviews] objectAtIndex:0] setAlpha:0];

    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleLightContent;
}

//恢复原本头部
-(void)setNormalMode{
    self.navigationController.navigationBar.layer.masksToBounds = NO;
    [self.navigationController.navigationBar setBackgroundImage:nil forBarMetrics:UIBarMetricsCompact];
    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleDefault;
}

//设置navigationBar 的颜色
-(void)setNavigationBarColorWithColor : (UIColor *) color{
        [self.navigationController.navigationBar setBackgroundImage:[UIImage createImageWithColor:color] forBarMetrics:UIBarMetricsDefault];
}



@end
