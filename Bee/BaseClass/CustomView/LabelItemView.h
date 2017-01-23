//
//  LabelItemView.h
//  Bee
//
//  Created by steam on 2017/1/22.
//  Copyright © 2017年 steam. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *      上下两个label组成的view，添加点击事件,
 */


@interface LabelItemView : UIView


/**
 infoTitle 显示信息
 constTitle  固定信息
 */
@property (nonatomic ,assign)  NSString * infoTitle;
@property (nonatomic , assign) NSString * constTitle;
@property (nonatomic)             NSInteger  itemTag;


/**
 添加点击事件

 @param target 对象
 @param action 动作
 */
-(void)addTarget:(id) target action:(SEL) action;


@end
