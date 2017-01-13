//
//  GuideViewController.m
//  LikeBeeOC
//
//  Created by hiteam on 16/7/12.
//  Copyright © 2016年 steam. All rights reserved.
//

#import "GuideViewController.h"
#import "GuideCell.h"

//修改导航页的数目
#define imageCount 3

@interface GuideViewController()<UICollectionViewDataSource,
                                                UICollectionViewDelegate
                                                >

@property(nonatomic, strong) UICollectionView * collectionView;
@property(nonatomic, strong) NSMutableArray * imageNameArray;
@property(nonatomic, strong) UIPageControl * pageController;

@end

static NSString * cellIdentifier = @"GuideCell";

@implementation GuideViewController

-(void)viewDidLoad{
    [super viewDidLoad];
    
    //初始化图片数组
    self.imageNameArray = [[NSMutableArray alloc] init];
    for (int i = 0; i < imageCount; i++)
    {
        int system = 40;
        if (fabs((double)[[UIScreen mainScreen]bounds].size.height - (double)568) < DBL_EPSILON) {
            system = 35;
        }
        NSString * imageName = [NSString stringWithFormat:@"guide_%d_%d",system,i+1];
        [self.imageNameArray addObject:[UIImage imageNamed:imageName]];
    }
    
    [self biuldCollectionView];
    [self biuldPageController];
}

#pragma mark -- build view

-(void)biuldCollectionView{
    UICollectionViewFlowLayout * layout = [[UICollectionViewFlowLayout alloc] init];
    layout.minimumInteritemSpacing = 0;
    layout.minimumLineSpacing = 0;
    layout.itemSize = KScreenBounds.size;
    layout.scrollDirection =  UICollectionViewScrollDirectionHorizontal;
    
    self.collectionView = [[UICollectionView alloc ] initWithFrame:KScreenBounds collectionViewLayout:layout];
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    self.collectionView.pagingEnabled = YES;
    self.collectionView.showsHorizontalScrollIndicator = NO;
    self.collectionView.showsVerticalScrollIndicator = NO;
    self.collectionView.bounces = NO;
    [self.collectionView registerClass:[GuideCell class] forCellWithReuseIdentifier:cellIdentifier];
    [self.view addSubview:self.collectionView];
}

-(void)biuldPageController{
    self.pageController = [[UIPageControl alloc] init];
    self.pageController.frame = CGRectMake(0, kScreenHeight - 100 *KScreenUnit,kScreenWidth, 40 * KScreenUnit);
    self.pageController.numberOfPages = imageCount;
    self.pageController.currentPage = 0;
    [self.view addSubview:self.pageController];
}

#pragma mark -- UICollectionViewDataSource,UICollectionViewDelegate

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.imageNameArray.count;
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    GuideCell * cell = (GuideCell * )[collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
    
    cell.image = self.imageNameArray[indexPath.item];
    if (indexPath.item == self.imageNameArray.count - 1)
    {
        [cell setNextButtonHidden:NO];
    }
    return cell;
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    
    self.pageController.currentPage = (int) (scrollView.contentOffset.x/kScreenWidth + 0.5);

    GuideCell * cell = (GuideCell *) [self.collectionView cellForItemAtIndexPath:[NSIndexPath indexPathForItem:self.pageController.currentPage inSection:1]];
    if (self.pageController.currentPage == imageCount)
    {
        [cell setNextButtonHidden:NO];
    }else
    {
        [cell setNextButtonHidden:YES];
    }
    
}



@end
