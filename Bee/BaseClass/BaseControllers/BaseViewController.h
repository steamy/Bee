//
//  BaseViewController.h
//  Bee
//
//  Created by steam on 2017/1/13.
//  Copyright © 2017年 steam. All rights reserved.
//

#import <UIKit/UIKit.h>

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

@end
