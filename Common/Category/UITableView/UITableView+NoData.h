//
//  UITableView+NoData.h
//  jike
//
//  Created by taotingxing on 2018/5/15.
//  Copyright © 2018年 陶庭兴. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NoDataView.h"

@interface UITableView (NoData)

@property (nonatomic, strong) NoDataView *nodataView;

@property (nonatomic, strong) NoDataView *nodataView1;

- (void)showNodataView;

- (void)showNodataViewWithContent:(NSString *)content;

- (void)hideNodataView;

- (void)showErrorLink;

- (void)hideErrorLink;

@end
