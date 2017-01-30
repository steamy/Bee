//
//  UIView+Extension.m
//  Bee
//
//  Created by steam on 2017/1/24.
//  Copyright © 2017年 steam. All rights reserved.
//

#import "UIView+Extension.h"

@implementation UIView (Extension)
//x
-(CGFloat)x{
    return CGRectGetMinX(self.frame);
}
-(void)setX:(CGFloat)x{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

//y
-(CGFloat)y{
    return CGRectGetMinY(self.frame);
}
-(void)setY:(CGFloat)y{
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

//width
-(CGFloat)width{
    return CGRectGetWidth(self.frame);
}
-(void)setWidth:(CGFloat)width{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

//height
-(CGFloat)height{
    return CGRectGetHeight(self.frame);
}
-(void)setHeight:(CGFloat)height{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

//size
-(CGSize)size{
    return  self.frame.size;
}
-(void)setSize:(CGSize)size{
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

//point
-(CGPoint)point{
    return self.frame.origin;
}
-(void)setPoint:(CGPoint)point{
    CGRect frame = self.frame;
    frame.origin = point;
    self.frame = frame;
}

//MaxY
-(CGFloat)MaxY{
    return CGRectGetMaxY(self.frame);
}
-(void)setMaxY:(CGFloat)MaxY{}

//MaxX
-(CGFloat)MaxX{
    return CGRectGetMaxX(self.frame);
}
-(void)setMaxX:(CGFloat)MaxX{}

@end
