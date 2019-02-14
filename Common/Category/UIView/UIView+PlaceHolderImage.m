//
//  UIView+PlaceHolderImage.m
//  jike
//
//  Created by 上海荣豫资产 on 2019/1/25.
//  Copyright © 2019 陶庭兴. All rights reserved.
//

#import "UIView+PlaceHolderImage.h"

static char holderKey;
@implementation UIView (PlaceHolderImage)

- (void)addPlaceHolderViewWithFrame:(CGRect)frame{
    
    PlaceHolderView *holderView = [[PlaceHolderView alloc]initWithFrame:frame];
    holderView.backgroundColor = whiteColor();
    self.holderView = holderView;
    [self addSubview:holderView];
    
}

- (PlaceHolderView *)holderView{
    
    return objc_getAssociatedObject(self, &holderKey);
    
}

- (void)setHolderView:(PlaceHolderView *)holderView{
    
    objc_setAssociatedObject(self, &holderKey, holderView, OBJC_ASSOCIATION_RETAIN);
    
}

@end
