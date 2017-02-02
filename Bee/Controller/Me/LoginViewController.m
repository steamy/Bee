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
    
    //输入监听
    [self.phoneTextField addTarget:self action:@selector(textFieldDidChange:) forControlEvents:UIControlEventEditingChanged];
    [self.codeTextField addTarget:self action:@selector(textFieldDidChange:) forControlEvents:UIControlEventEditingChanged];
    
    //点击事件
    [self.loginButton addTarget:self action:@selector(loginBee) forControlEvents:UIControlEventTouchUpInside];
    [self.getCodeButton addTarget:self action:@selector(getCode) forControlEvents:UIControlEventTouchUpInside];
    
//#pragma waring  -- delete this line
//    [[BeeNetworkManager sharInstance] getJSONWithUrl:Bee_URL_Login parameters:nil success:^(id responseObject) {
//        NSLog(@"success---%@",(NSString *)responseObject);
//    } fail:^(NSError *error) {
//        NSLog(@"error:%@",error);
//    }];
//    NSDictionary * para = [NSDictionary dictionaryWithObject:@"post" forKey:@"content"];
//    [[BeeNetworkManager sharInstance] postJSONWithUrl:Bee_URL_PostTest parameters:para success:^(id responseObject) {
//        NSString *resultStr = [[NSString alloc]initWithData:responseObject encoding:NSUTF8StringEncoding];
//        NSLog(@"success--post--%@",resultStr);
//    } fail:^(NSError *error) {
//        NSLog(@"%@",error);
//    }];
    
}

#pragma mark -- 点击事件
//退出按钮
-(void)backToRootViewController{
    [self dismissViewControllerAnimated:YES completion:nil];
}

//注册按钮
-(void)pushToRegistViewController{
    
}

//登录
-(void)loginBee{
    
}
//获取验证码
-(void)getCode{
    
}

//textField输入事件
-(void)textFieldDidChange:(UITextField * ) textField {
    
    if (self.phoneTextField.text.length != 0 && self.codeTextField.text.length != 0) {
        self.loginButton.backgroundColor = ButtonYellowColor;
        [self.loginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        self.loginButton.enabled = YES;
    }else{
        
        self.loginButton.backgroundColor = ButtonGrayColor;
        [self.loginButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        self.loginButton.enabled = NO;
        
    }
    
}



@end
