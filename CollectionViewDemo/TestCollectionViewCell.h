//
//  TestCollectionViewCell.h
//  CollectionViewDemo
//
//  Created by Civet on 2020/7/29.
//  Copyright © 2020 PersonalONBYL. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TestCollectionViewCell : UICollectionViewCell

@property (nonatomic,strong) NSIndexPath *indexPath;
@property (nonatomic,strong) UILabel *indexLabel;

- (void)configuation;

@end

NS_ASSUME_NONNULL_END
