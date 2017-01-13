//
//  BaseViewController.m
//  Bee
//
//  Created by steam on 2017/1/13.
//  Copyright © 2017年 steam. All rights reserved.
//



#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //设置背景颜色
    self.view.backgroundColor = ThemeBackgroudColor;

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

#pragma mark -- 通用方法

/**
 设置导航的文字
 
 @param title 文字
 */
-(void)setTitleWithString: (NSString *) title{
    UILabel * titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 120, 44)];
    titleLabel.font = TextNavigationTitleFont;
    titleLabel.textColor = NavigationTitleColor;
    titleLabel.text = title;
    titleLabel.textAlignment = NSTextAlignmentCenter;
    self.navigationItem.titleView = titleLabel;
}

/**
 设置右边的节点
 
 @param title 文字
 @param imageName 添加图片
 @param selectedImageName 选中图片
 @param action 点击事件
 */
-(void)setRightItem: (NSString *) title imageName : ( NSString *) imageName
selectedImageName :(NSString * ) selectedImageName action :(SEL) action{
    
    UIButton * rightButton = [UIButton buttonWithType:UIButtonTypeCustom];
    rightButton.frame = CGRectMake(0, 0, 45, 35);
    
    //设置图片项
    if ( imageName != nil) {
        UIImage * normalImage = [UIImage imageNamed:imageName];
        normalImage = [normalImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        [rightButton setImage:normalImage forState:UIControlStateNormal];
        rightButton.imageEdgeInsets = UIEdgeInsetsMake(3, 3, 0, -20);
        
        //选中效果
        if ( selectedImageName != nil) {
            UIImage * selectedImage = [UIImage imageNamed:selectedImageName];
            selectedImage = [selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
            [rightButton setImage:selectedImage forState:UIControlStateHighlighted];
        }
    }
    
    //设置文字项
    if (title != nil) {
        [rightButton setTitle:title forState:UIControlStateNormal];
        [rightButton setTitleColor:TextBlackColor forState:UIControlStateNormal];
        rightButton.titleLabel.font = [UIFont systemFontOfSize:17];
    }
    
    //设置点击事件
    [rightButton addTarget:selectedImageName action:action forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem * rightItem = [[UIBarButtonItem alloc]
                                   initWithCustomView:rightButton];
    
    self.navigationItem.rightBarButtonItem = rightItem;
}




@end
