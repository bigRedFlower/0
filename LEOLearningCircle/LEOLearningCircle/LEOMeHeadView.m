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
    
  //添加按钮
    [self loadButton];
}

- (void)loadButton {
    
    UIButton *headBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [headBtn setBackgroundImage:[UIImage imageNamed:@"我的头像背景图"] forState:UIControlStateNormal];
    CGFloat headBtnRadius = 42;
    headBtn.frame = CGRectMake(self.bounds.size.width / 2 - headBtnRadius, self.bounds.size.height / 2 - headBtnRadius, headBtnRadius * 2, headBtnRadius * 2);
    headBtn.layer.cornerRadius = headBtnRadius;
    headBtn.layer.masksToBounds = YES;
    [self addSubview:headBtn];
    
    UIButton *namebtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [namebtn setTitle:@"快速登录>>" forState:UIControlStateNormal];
    [namebtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    namebtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
    namebtn.titleLabel.font = [UIFont systemFontOfSize:15];
    namebtn.frame = CGRectMake(100, 100, 200, 20);
    CGFloat padding = 10;
    namebtn.center = CGPointMake(headBtn.center.x, headBtn.center.y + headBtnRadius + padding);
    [self addSubview:namebtn];

    UIButton *me_right = [UIButton buttonWithType:UIButtonTypeCustom];
    [me_right setImage:[UIImage imageNamed:@"me_right"] forState:UIControlStateNormal];
    CGFloat paddingRight = 30;
    CGFloat rightW = 12;
    CGFloat rightH = 21;
    CGFloat rightX = self.bounds.size.width - rightW - paddingRight;
    CGFloat rightY = self.bounds.size.height / 2;
    me_right.frame = CGRectMake(rightX, rightY, rightW, rightH);
    [self addSubview:me_right];
}


@end
