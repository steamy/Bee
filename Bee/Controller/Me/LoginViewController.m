//
//  LoginViewController.m
//  Bee
//
//  Created by steam on 2017/1/14.
//  Copyright © 2017年 steam. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@property (weak, nonatomic) IBOutlet UIButton *loginButton;
@property (weak, nonatomic) IBOutlet UITextField *phoneTextField;
@property (weak, nonatomic) IBOutlet UITextField *codeTextField;
@property (weak, nonatomic) IBOutlet UIButton *getCodeButton;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self createView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma  mark -- createView
-(void)createView{
    //标题
    [self setTitleWithString:@"登录"];
    
    //leftitem 退出
    UIButton * button = [UIButton createBackButton];
    [button addTarget:self action:@selector(backToRootViewController) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem * leftItem = [[UIBarButtonItem alloc] initWithCustomView:button];
    self.navigationItem.leftBarButtonItem = leftItem;
    
    //rightItem 注册
    [self setRightItem:@"注册" imageName:nil selectedImageName:nil action:@selector(pushToRegistViewController)];
    
}

#pragma mark -- 点击事件
//退出按钮
-(void)backToRootViewController{
    [self dismissViewControllerAnimated:YES completion:nil];
}

//注册按钮
-(void)pushToRegistViewController{
    
}


@end
