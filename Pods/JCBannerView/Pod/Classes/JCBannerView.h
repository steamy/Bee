//
//  JCBannerView.h
//  JCBannerView
//
//  Created by 李京城 on 15/4/21.
//  Copyright (c) 2015年 李京城. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "JCBannerCell.h"
#import "JCPageControl.h"

typedef void (^JCBannerViewBlock)(NSDictionary *data);

IB_DESIGNABLE
@interface JCBannerView : UICollectionReusableView

@property (nonatomic, copy) NSArray *items;

@property (nonatomic, strong) UIImage *placeholderImage;
@property (nonatomic, assign) IBInspectable BOOL hideTitleLabel; //default YES
@property (nonatomic, assign) IBInspectable NSInteger autoPlayingInterval; //default 0

- (void)reloadData;

- (void)setCompletionBlockWithSeleted:(JCBannerViewBlock)completionBlock;

@end
