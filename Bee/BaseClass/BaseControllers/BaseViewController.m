//
//  BaseViewController.m
//  Bee
//
//  Created by steam on 2017/1/13.
//  Copyright © 2017年 steam. All rights reserved.
//



#import "BaseViewController.h"


@interface BaseViewController ()

@property (nonatomic , strong) CommonPromptView * promtpView;

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //设置背景颜色
    self.view.backgroundColor = ThemeBackgroudColor;
    
    //初始化异常界面
    self.promtpView = [[CommonPromptView alloc] init];

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
    [rightButton addTarget:self action:action forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem * rightItem = [[UIBarButtonItem alloc]
                                   initWithCustomView:rightButton];
    
    self.navigationItem.rightBarButtonItem = rightItem;
}


/**
 处理异常
 
 @param type 异常的类型：网络不可用和定位不可用
 */
-(void)shwoErrorViewWithErrorType : (ErrorType ) type setter : (SEL) setter{
    
    if (type == InternetUnavailable) {
        //网络不可用
        [self.promtpView setViewContentWithImagename:@"v2_connnect_error" promptText:@"当前网络不可用，请稍后重试" buttonText:@"点击重试" setter: setter target : self];
    }else  if (type == LocationUnavailable ){
        //定位不可用
        [self.promtpView setViewContentWithImagename:@"" promptText:@"当前网络不可用，请稍后重试" buttonText:@"点击重试" setter: setter target : self];
    }else if (type == NotLoginIn ){
        //未登录
        [self.promtpView setViewContentWithImagename:@"NotLogin" promptText:@"登录后查看购物车、收藏记录" buttonText:@"登录" setter: setter target:self];
    }
    
    [self.view addSubview:self.promtpView];
}

/**
 移除异常界面
 */
-(void)removePromptView{
    [self.promtpView removeFromSuperview];
}




@end
