//
//  NoDataView.m
//  jike
//
//  Created by taotingxing on 2018/5/15.
//  Copyright © 2018年 陶庭兴. All rights reserved.
//

#import "NoDataView.h"

@interface NoDataView()

@property (nonatomic, strong) UIImageView *imageV;
@property (nonatomic, strong) UIButton    *actionBtn;

@end
@implementation NoDataView

- (instancetype)initWithFrame:(CGRect)frame WithContent:(NSString *)content{
    
    if (self = [super initWithFrame:frame]) {
        
        self.imageV = [[UIImageView alloc]init];
        self.imageV.image = [UIImage imageNamed:@"没有数据"];
        
        if ([content containsString:@"网络出问题了"]) {
            self.imageV.image = [UIImage imageNamed:@"无网络连接"];
        }
        
        [self addSubview:self.imageV];
        
        [self.imageV mas_updateConstraints:^(MASConstraintMaker *make) {
           
            if ([content containsString:@"网络出问题"]) {
                
                make.centerX.equalTo(self);
                make.centerY.equalTo(self);
                
            } else {
                
                make.centerX.equalTo(self);
                make.centerY.equalTo(self).offset(-50);
                
            }
            
        }];
        
        self.actionBtn = [[UIButton alloc]init];
        [self.actionBtn setTitle:content forState:UIControlStateNormal];
        self.actionBtn.titleLabel.font = Font14();
        [self.actionBtn setTitleColor:blackColor() forState:UIControlStateNormal];
        [self addSubview:self.actionBtn];
        
        [self.actionBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(self.imageV.mas_bottom).offset(20);
            make.centerX.equalTo(self);
            make.height.mas_equalTo(30);
            make.width.mas_equalTo(SCREEN_WIDTH/2.0);
            
        }];
        
    }
    return self;
}


@end
