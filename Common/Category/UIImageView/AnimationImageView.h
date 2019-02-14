//
//  AnimationImageView.h
//  jike
//
//  Created by 上海荣豫资产 on 2018/9/28.
//  Copyright © 2018 陶庭兴. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^ImageViewFinishBlock)(void);
@interface AnimationImageView : UIImageView

@property (nonatomic, strong) NSArray *images;
@property (nonatomic, copy)   ImageViewFinishBlock block;

//- (void)startAnt;

@end

NS_ASSUME_NONNULL_END
