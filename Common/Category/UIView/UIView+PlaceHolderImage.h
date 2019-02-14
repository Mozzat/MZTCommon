//
//  UIView+PlaceHolderImage.h
//  jike
//
//  Created by 上海荣豫资产 on 2019/1/25.
//  Copyright © 2019 陶庭兴. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlaceHolderView.h"

NS_ASSUME_NONNULL_BEGIN

@interface UIView (PlaceHolderImage)

@property (nonatomic, strong) PlaceHolderView *holderView;

- (void)addPlaceHolderViewWithFrame:(CGRect)frame;

@end

NS_ASSUME_NONNULL_END
