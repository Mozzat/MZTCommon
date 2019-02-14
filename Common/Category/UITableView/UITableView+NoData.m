  //
//  UITableView+NoData.m
//  jike
//
//  Created by taotingxing on 2018/5/15.
//  Copyright © 2018年 陶庭兴. All rights reserved.
//

#import "UITableView+NoData.h"
#import "UIView+Common.h"
#import <objc/runtime.h>

static char noDataViewKey;
static char noDataViewKey1;
@implementation UITableView (NoData)

#define SCREEN_WIDTH1 ([[UIScreen mainScreen] respondsToSelector:@selector(nativeBounds)]?[UIScreen mainScreen].nativeBounds.size.width/[UIScreen mainScreen].nativeScale:[UIScreen mainScreen].bounds.size.width)

- (void)showNodataView{
    
    NoDataView *nodataView = [[NoDataView alloc]initWithFrame:CGRectMake(0, self.top, SCREEN_WIDTH1, self.height) WithContent:@"没有数据"];
    nodataView.backgroundColor = self.backgroundColor;
    self.nodataView = nodataView;
    [self.superview addSubview:nodataView];
    
}

- (void)showNodataViewWithContent:(NSString *)content{
    
    NoDataView *nodataView = [[NoDataView alloc]initWithFrame:CGRectMake(0, self.top, SCREEN_WIDTH1, self.height) WithContent:content];
    nodataView.backgroundColor = self.backgroundColor;
    self.nodataView = nodataView;
    [self.superview addSubview:nodataView];
}

- (void)showErrorLink{
    
    NoDataView *nodataView = [[NoDataView alloc]initWithFrame:CGRectMake(0, self.top, SCREEN_WIDTH1, self.height) WithContent:@"网络出问题了"];
    nodataView.backgroundColor = self.backgroundColor;
    self.nodataView1 = nodataView;
    [self.superview addSubview:nodataView];
}

- (void)hideNodataView{
    
    [self.nodataView removeFromSuperview];
    
}

- (void)hideErrorLink{
    
    [self.nodataView1 removeFromSuperview];
}

- (NoDataView *)nodataView{
    
    return objc_getAssociatedObject(self, &noDataViewKey);
}

- (void)setNodataView:(NoDataView *)nodataView{
    
    objc_setAssociatedObject(self, &noDataViewKey, nodataView, OBJC_ASSOCIATION_RETAIN);
}

- (NoDataView *)nodataView1{
    
    return objc_getAssociatedObject(self, &noDataViewKey1);
}

- (void)setNodataView1:(NoDataView *)nodataView1{
    
    objc_setAssociatedObject(self, &noDataViewKey1, nodataView1, OBJC_ASSOCIATION_RETAIN);
}

@end
