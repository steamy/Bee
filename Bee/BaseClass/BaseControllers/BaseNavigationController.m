//
//  BaseNavigationController.m
//  Bee
//
//  Created by steam on 2017/1/13.
//  Copyright © 2017年 steam. All rights reserved.
//

#import "BaseNavigationController.h"

@interface BaseNavigationController ()


@end

@implementation BaseNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.interactivePopGestureRecognizer.delegate = nil;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -- createView
-(void) createBackButton {
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    self.backButton = button;
    button.frame = CGRectMake(0, 0, 75, 40);
    
    UIImage * returnImage = [UIImage imageNamed:@"v2_goback"];
    returnImage = [returnImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    [button setImage:returnImage forState:UIControlStateNormal];
    [button addTarget:self action:@selector(clickedBackButton) forControlEvents:UIControlEventTouchUpInside];
    
}
-(void)clickedBackButton{
    [self popViewControllerAnimated:YES];
}

#pragma mark -- overloading pushViewController
-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    [super pushViewController:viewController animated:animated  ];
    
    //如果不是第一页
    if (self.childViewControllers.count > 0) {
        UIBarButtonItem * item = [[UIBarButtonItem alloc] initWithCustomView:self.backButton];
        viewController.navigationItem.leftBarButtonItem = item;
    }
    
}

@end
