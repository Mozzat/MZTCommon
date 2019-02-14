//
//  UIScrollView+NavigationView.h
//  jike
//
//  Created by 上海荣豫资产 on 2019/1/22.
//  Copyright © 2019 陶庭兴. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ScrollViewNavigationView.h"

NS_ASSUME_NONNULL_BEGIN

@interface UIScrollView (NavigationView)

@property (nonatomic, strong) ScrollViewNavigationView *navgationView;

- (void)addNavigationViewWithTitle:(NSString *)title;

@end

NS_ASSUME_NONNULL_END
