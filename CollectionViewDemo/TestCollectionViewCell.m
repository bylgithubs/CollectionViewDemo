//
//  TestCollectionViewCell.m
//  CollectionViewDemo
//
//  Created by Civet on 2020/7/29.
//  Copyright © 2020 PersonalONBYL. All rights reserved.
//

#import "TestCollectionViewCell.h"

@implementation TestCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initUI];
    }
    return self;
}

- (void)initUI{
    self.indexLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
    self.indexLabel.backgroundColor = [UIColor colorWithRed:arc4random()%255/255.0 green:arc4random()%255/255.0 blue:arc4random()%255/255.0 alpha:1];
    self.indexLabel.textAlignment = NSTextAlignmentCenter;
    [self addSubview:self.indexLabel];
}

- (void)configuation{
    self.indexLabel.text = [NSString stringWithFormat:@"%ld",self.indexPath.row];
}

@end
