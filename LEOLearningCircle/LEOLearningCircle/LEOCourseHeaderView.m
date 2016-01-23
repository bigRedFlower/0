//
//  LEOCourseHeaderView.m
//  LEOLearningCircle
//
//  Created by  justinchou on 16/1/21.
//  Copyright © 2016年 zz. All rights reserved.
//

#import "LEOCourseHeaderView.h"
#import "LEOCoursePopView.h"

#define kScreenWidth [UIScreen mainScreen].bounds.size.width

@interface LEOCourseHeaderView ()

@property (nonatomic, strong) UIButton *todayBtn;
@property (nonatomic, strong) UIButton *otherOptionBtn;
@property (nonatomic, strong) LEOCoursePopView *popView;

@end

@implementation LEOCourseHeaderView

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    
    self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"545464684685648"]];
//    [self.layer.contents setImage:[UIImage imageNamed:@"545464684685648"]];
    
    self.todayBtn = [[UIButton alloc] init];
    [self.todayBtn addTarget:self action:@selector(clickTodayBtn) forControlEvents:UIControlEventTouchUpInside];
    self.otherOptionBtn = [[UIButton alloc] init];
    [self.otherOptionBtn addTarget:self action:@selector(clickOtherOptionBtn) forControlEvents:UIControlEventTouchUpInside];
    
    LEOCoursePopView *popView = [[LEOCoursePopView alloc] initWithFrame:CGRectMake(300, 66, 56, 54)];
    popView.hidden = YES;
    self.popView = popView;
    
    [self addSubview:self.popView];
    [self addSubview:self.todayBtn];
    [self addSubview:self.otherOptionBtn];
    
    return self;
}

- (void)clickTodayBtn{
    //Todo
}

- (void)clickOtherOptionBtn{
    
    self.popView.hidden = !self.popView.hidden;
}

- (void)layoutSubviews{
    [super layoutSubviews];
    
    [self.todayBtn setImage:[UIImage imageNamed:@"56456464646"] forState:UIControlStateNormal];
    [self.todayBtn sizeToFit];
    self.todayBtn.frame = CGRectMake(15, 15, self.todayBtn.bounds.size.width, self.todayBtn.bounds.size.height);
    
    [self.otherOptionBtn setImage:[UIImage imageNamed:@"6546874684468464"] forState:UIControlStateNormal];
    [self.otherOptionBtn sizeToFit];
    self.otherOptionBtn.frame = CGRectMake(kScreenWidth-15-self.otherOptionBtn.bounds.size.width, 15, self.otherOptionBtn.bounds.size.width, self.otherOptionBtn.bounds.size.height);
    
}



@end
