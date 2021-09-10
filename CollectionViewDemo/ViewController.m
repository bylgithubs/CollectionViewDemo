//
//  ViewController.m
//  CollectionViewDemo
//
//  Created by Civet on 2020/7/29.
//  Copyright © 2020 PersonalONBYL. All rights reserved.
//

#import "ViewController.h"
#import "WaterFlowLayout.h"

typedef NS_ENUM(NSUInteger, CollectionViewLayoutType) {
    CollectionViewLayoutTypeFlowLayout,
    CollectionViewLayoutTypeWaterFlowLayout,
};

@interface ViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>

@property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, assign) CollectionViewLayoutType type;

@end

@implementation ViewController
//@synthesize collectionView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.type = CollectionViewLayoutTypeFlowLayout;
    UICollectionViewFlowLayout *layout;
    if (self.type == CollectionViewLayoutTypeWaterFlowLayout) {
        layout = [[WaterFlowLayout alloc] init];
    } else {
        layout = [[UICollectionViewFlowLayout alloc] init];
    }
    
    layout.scrollDirection = UICollectionViewScrollDirectionVertical;
    layout.itemSize = CGSizeMake(100, 100);
    self.collectionView = [[UICollectionView alloc] initWithFrame:self.view.frame collectionViewLayout:layout];
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
//    [collect registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"collectionCell"];
    [self.collectionView registerClass:[TestCollectionViewCell class] forCellWithReuseIdentifier:@"collectionCell"];
    [self.view addSubview:self.collectionView];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 100;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
//    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"collectionCell" forIndexPath:indexPath];
    TestCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"collectionCell" forIndexPath:indexPath];
    cell.backgroundColor = [UIColor colorWithRed:arc4random()%255/255.0 green:arc4random()%255/255.0 blue:arc4random()%255/255.0 alpha:1];
    cell.indexPath = indexPath;
    [cell configuation];
    return cell;
}


@end
