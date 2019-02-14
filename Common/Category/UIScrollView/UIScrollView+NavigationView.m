//
//  UIScrollView+NavigationView.m
//  jike
//
//  Created by 上海荣豫资产 on 2019/1/22.
//  Copyright © 2019 陶庭兴. All rights reserved.
//

#import "UIScrollView+NavigationView.h"

static char noNavViewKey;
@implementation UIScrollView (NavigationView)

- (void)addNavigationViewWithTitle:(NSString *)title{
    
    ScrollViewNavigationView *navigationView = [[ScrollViewNavigationView alloc]initWithFrame:CGRectMake(0, self.top, SCREEN_WIDTH, BDTopHeight)];
    navigationView.titleStr = title;
    self.navgationView = navigationView;
    [self.superview addSubview:navigationView];
    
}

///get set方法
- (ScrollViewNavigationView *)navgationView{
    
    return objc_getAssociatedObject(self, &noNavViewKey);
}

- (void)setNavgationView:(ScrollViewNavigationView *)navgationView{
    
    objc_setAssociatedObject(self, &noNavViewKey, navgationView, OBJC_ASSOCIATION_RETAIN);
}

@end
