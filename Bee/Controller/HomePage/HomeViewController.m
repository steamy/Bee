//
//  HomeViewController.m
//  Bee
//
//  Created by steam on 2017/1/14.
//  Copyright © 2017年 steam. All rights reserved.
//

#import "HomeViewController.h"
#import "HomeHeaderView.h"


@interface HomeViewController ()<UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>

@property (nonatomic, strong) UICollectionView * collectionContentView;
@property (nonatomic, strong) HomeHeaderView * homeHeaderView;
@end

static NSString * const reuseIdentifierHeader = @"HomeHeaderView";

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self createView];
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [self setCustomMode];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark -- createView
-(void)createView{
    UICollectionViewFlowLayout * flowLayout = [[UICollectionViewFlowLayout alloc] init];
    
    UICollectionView * collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, -64, kScreenWidth, kScreenHeight) collectionViewLayout:flowLayout];
    self.collectionContentView = collectionView;
    [self.view addSubview:collectionView];
    collectionView.delegate = self;
    collectionView.dataSource = self;
    collectionView.backgroundColor = ThemeGrayColor;
    collectionView.showsVerticalScrollIndicator = NO;
    
    [collectionView registerClass:[HomeHeaderView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:reuseIdentifierHeader];
    
}

#pragma mark -- UICollectionDelegate /  UICollectionDataSource

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 0;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
   
    return nil;
}

//设置header
-(UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath{
    
    if (kind == UICollectionElementKindSectionHeader) {
        if (indexPath.section == 0) {
            HomeHeaderView  * header = [collectionView dequeueReusableSupplementaryViewOfKind: UICollectionElementKindSectionHeader withReuseIdentifier:reuseIdentifierHeader forIndexPath:indexPath];
            
            return header;
        }
    }
    return nil;
}

//
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section{
    CGSize size = CGSizeMake(0, 0);
    if (section == 0) {
        size = CGSizeMake(kScreenWidth, 903 * KScreenUnit);
    }
    return size;
}


@end
