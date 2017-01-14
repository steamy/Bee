//
//  CommonPromptView.h
//  Bee
//
//  Created by steam on 2017/1/14.
//  Copyright © 2017年 steam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CommonPromptView : UIView


/**
 设置视图的内容

 @param imageName 图片名称
 @param promptText 提示内容
 @param buttonText 按钮内容
 @param action 按钮点击事件
 */
-(void)setViewContentWithImagename : (NSString *) imageName
                        promptText : (NSString *) promptText
                        buttonText :  (NSString *) buttonText
                            setter : (SEL) action
                            target : (id) target;
@end
