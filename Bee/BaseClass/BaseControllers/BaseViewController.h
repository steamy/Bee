//
//  BaseViewController.h
//  Bee
//
//  Created by steam on 2017/1/13.
//  Copyright © 2017年 steam. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    InternetUnavailable,
    LocationUnavailable,
    NotLoginIn,
} ErrorType;

@interface BaseViewController : UIViewController


/**
 设置导航的文字

 @param title 文字
 */
-(void)setTitleWithString: (NSString *) title;


/**
 设置右边的节点

 @param title 文字
 @param imageName 添加图片
 @param selectedImageName 选中图片
 @param action 点击事件
 */
-(void)setRightItem: (NSString *) title
         imageName : ( NSString *) imageName
         selectedImageName :(NSString * ) selectedImageName
         action :(SEL) action;


/**
 处理异常

 @param type 异常的类型：网络不可用和定位不可用
 */
-(void)shwoErrorViewWithErrorType : (ErrorType ) type setter : (SEL) setter;

/**
 移除异常界面
 */
-(void)removePromptView;

@end
