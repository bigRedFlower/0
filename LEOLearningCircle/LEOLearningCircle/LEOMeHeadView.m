//
//  LEOMeHeadView.m
//  LEOLearningCircle
//
//  Created by 李 on 16/1/18.
//  Copyright © 2016年 zz. All rights reserved.
//

#import "LEOMeHeadView.h"

@interface LEOMeHeadView ()

@end
@implementation LEOMeHeadView

- (void)drawRect:(CGRect)rect {
    
    
}
- (void)layoutSubviews {
    
    [super layoutSubviews];

    self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"我的背景"]];

    UIImageView *me_left =[[UIImageView alloc]initWithFrame:CGRectMake(20, 20, 74, 30)];
    me_left.image = [UIImage imageNamed:@"me_left"];
    [self addSubview:me_left];
    
    UIButton *headBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [headBtn setBackgroundImage:[UIImage imageNamed:@"zhongluchun"] forState:UIControlStateNormal];
    headBtn.frame = CGRectMake(self.bounds.size.width / 2 - 40, self.bounds.size.height / 2 - 40, 80, 80);
    
    [self addSubview:headBtn];
    
    headBtn.layer.cornerRadius = 40;
    headBtn.layer.masksToBounds = YES;
    
    
    
}
@end
