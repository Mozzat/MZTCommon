//
//  ScrollViewNavigationView.m
//  jike
//
//  Created by 上海荣豫资产 on 2019/1/22.
//  Copyright © 2019 陶庭兴. All rights reserved.
//

#import "ScrollViewNavigationView.h"

@interface ScrollViewNavigationView ()

@property (nonatomic, strong) UILabel *titleLab;

@end

@implementation ScrollViewNavigationView

- (instancetype)initWithFrame:(CGRect)frame{
    
    if (self = [super initWithFrame:frame]) {
        
        self.backgroundColor = whiteColor();
        UIView *bottomView = [[UIView alloc]init];
        bottomView.backgroundColor = whiteColor();
        [self addSubview:bottomView];
        
        [bottomView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.left.equalTo(self);
            make.width.mas_equalTo(SCREEN_WIDTH);
            make.height.mas_equalTo(44);
            make.bottom.equalTo(self);
            
        }];
        
        [bottomView addSubview:self.titleLab];
        [self.titleLab mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.center.equalTo(bottomView);
            
        }];
        
        
    }
    
    return self;
    
}

- (UILabel *)titleLab{
    
    if (!_titleLab) {
        _titleLab = [[UILabel alloc]init];
        _titleLab.font = BlodFont(18);
        _titleLab.textColor = blackColor();
        
    }
    return _titleLab;
    
}

- (void)setTitleStr:(NSString *)titleStr{
    
    _titleStr = titleStr;
    self.titleLab.text = titleStr;
    
}

@end
