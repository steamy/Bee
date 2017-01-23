//
//  MeScrollView.h
//  Bee
//
//  Created by steam on 2017/1/21.
//  Copyright © 2017年 steam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MeScrollView : UIScrollView


/** 添加点击事件
 *
 */

-(void) addTarget : (id) target action:(SEL)action;

@end
