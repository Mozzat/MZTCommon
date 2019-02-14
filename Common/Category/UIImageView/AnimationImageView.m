//
//  AnimationImageView.m
//  jike
//
//  Created by 上海荣豫资产 on 2018/9/28.
//  Copyright © 2018 陶庭兴. All rights reserved.
//

#import "AnimationImageView.h"

@interface AnimationImageView ()<CAAnimationDelegate>

@end

@implementation AnimationImageView

- (instancetype)initWithFrame:(CGRect)frame{
    
    if (self = [super initWithFrame:frame]) {
        
        
    }
    return self;
}

- (void)setImages:(NSArray *)images{
    
    _images = images;
    
//    self.animationImages = images;
//    self.animationDuration = 1.05;
//    self.animationRepeatCount = 0;
    
    float animationTime = 1.5;
    
    //创建CAKeyframeAnimation
    CAKeyframeAnimation *animation = [CAKeyframeAnimation animationWithKeyPath:@"contents"];
    animation.duration = animationTime;
    animation.delegate = self;
    //存放图片的数组
    NSMutableArray *array = [NSMutableArray array];
    for(NSUInteger i = 0;i < 69 ;i++) {
        UIImage *img = [UIImage imageNamed:[NSString stringWithFormat:@"%ld.png",i]];
        CGImageRef cgimg = img.CGImage;
        [array addObject:(__bridge UIImage *)cgimg];
        
    }
    
    animation.values = array;
    [self.layer addAnimation:animation forKey:nil];
    
}

- (void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag{
    
    if (self.block) {
        self.block();
    }
    
}

@end
