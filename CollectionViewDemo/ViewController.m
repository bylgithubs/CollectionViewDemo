//
//  ViewController.m
//  CollectionViewDemo
//
//  Created by Civet on 2020/7/29.
//  Copyright © 2020 PersonalONBYL. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>

@property(nonatomic,strong) UICollectionView *collect;

@end

@implementation ViewController
@synthesize collect;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.scrollDirection = UICollectionViewScrollDirectionVertical;
    layout.itemSize = CGSizeMake(100, 100);
    collect = [[UICollectionView alloc] initWithFrame:self.view.frame collectionViewLayout:layout];
    collect.delegate = self;
    collect.dataSource = self;
//    [collect registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"collectionCell"];
    [collect registerClass:[TestCollectionViewCell class] forCellWithReuseIdentifier:@"collectionCell"];
    [self.view addSubview:collect];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 20;
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
