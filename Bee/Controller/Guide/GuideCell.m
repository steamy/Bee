//
//  GuideCell.m
//  LikeBeeOC
//
//  Created by hiteam on 16/7/12.
//  Copyright © 2016年 steam. All rights reserved.
//

#import "GuideCell.h"


@interface GuideCell()

@property(strong , nonatomic) UIImageView * imageView;
@property(strong , nonatomic) UIButton * nextButton;


@end

@implementation GuideCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.imageView = [[UIImageView alloc] init];
        self.imageView.frame = KScreenBounds;
        self.imageView.contentMode = UIViewContentModeScaleAspectFill;
        [self.contentView addSubview:self.imageView];
        
        self.nextButton.hidden = YES;
    }
    return self;
}
-(void)setNextButtonHidden:(BOOL)hidden{
    self.nextButton.hidden = hidden;
}

-(void)setImage:(UIImage *)image{
    self.imageView.image = image;
}

/**
 *  懒加载view
 *
 *  @return nextButton
 */
-(UIButton *)nextButton{
    if (!_nextButton) {
        _nextButton = [[UIButton alloc] init];
        _nextButton.frame = CGRectMake((kScreenWidth - 250 * KScreenUnit)  / 2, kScreenHeight - 178  * KScreenUnit, 250  * KScreenUnit, 80 *KScreenUnit);
        [ _nextButton addTarget:self action:@selector(nextButtonClick) forControlEvents:UIControlEventTouchUpInside];
        [self.contentView addSubview:_nextButton];
    }
    return _nextButton;
}

-(void)nextButtonClick{
    [[NSNotificationCenter defaultCenter] postNotificationName:GuideViewDidFinish object:nil];
}

@end
