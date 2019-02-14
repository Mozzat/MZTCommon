//
//  PlaceHolderView.m
//  jike
//
//  Created by 上海荣豫资产 on 2019/1/25.
//  Copyright © 2019 陶庭兴. All rights reserved.
//

#import "PlaceHolderView.h"

@implementation PlaceHolderView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        UIImageView *bgImageV = [[UIImageView alloc]init];
        bgImageV.image = [UIImage imageNamed:@"无图片状态"];
        
        if (frame.size.width == 375) {
            bgImageV.image = [UIImage imageNamed:@"无图片状态1"];
        }
        
        if (frame.size.width == frame.size.height) {
            bgImageV.contentMode = UIViewContentModeScaleToFill ;
            
        } else {
            bgImageV.contentMode = UIViewContentModeCenter;
            
        }
        
        bgImageV.clipsToBounds = YES;
        [self addSubview:bgImageV];
        
        [bgImageV mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.left.top.with.height.equalTo(self);
            
        }];
        
    }
    return self;
}



@end
