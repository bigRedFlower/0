//
//  LEOCourseBtnView.m
//  LEOLearningCircle
//
//  Created by  justinchou on 16/1/23.
//  Copyright © 2016年 zz. All rights reserved.
//

#import "LEOCourseBtnView.h"

@interface LEOCourseBtnView ()

@property (nonatomic, strong) UIButton *gradeBtn;
@property (nonatomic, strong) UIButton *classBtn;
@property (nonatomic, strong) UIView *separateView;

@end

@implementation LEOCourseBtnView

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    self.backgroundColor = [UIColor yellowColor];
    
    self.gradeBtn = [[UIButton alloc] init];
    [self.gradeBtn setBackgroundImage:[UIImage imageNamed:@"564654564646"] forState:UIControlStateNormal];
    [self.gradeBtn setTitle:@"年级" forState:UIControlStateNormal];
    [self.gradeBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.gradeBtn setTitleColor:[UIColor colorWithRed:44.0/255.0 green:182.0/255.0 blue:167.0/255.0 alpha:1.0] forState:UIControlStateSelected];
    self.gradeBtn.titleLabel.font = [UIFont systemFontOfSize:15];
    [self.gradeBtn addTarget:self action:@selector(clickGradeBtn) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:self.gradeBtn];
    
    self.classBtn = [[UIButton alloc] init];
    [self.classBtn setBackgroundImage:[UIImage imageNamed:@"564654564646"] forState:UIControlStateNormal];
    [self.classBtn setTitle:@"课程" forState:UIControlStateNormal];
    [self.classBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.classBtn setTitleColor:[UIColor colorWithRed:44.0/255.0 green:182.0/255.0 blue:167.0/255.0 alpha:1.0] forState:UIControlStateSelected];
    self.classBtn.titleLabel.font = [UIFont systemFontOfSize:15];
    [self.classBtn addTarget:self action:@selector(clickClassBtn) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:self.classBtn];
    
    self.separateView = [[UIView alloc] init];
    self.separateView.backgroundColor = [UIColor colorWithRed:44.0/255.0 green:182.0/255.0 blue:167.0/255.0 alpha:1.0];
    [self addSubview:self.separateView];
    
    return self;
}

- (void)clickGradeBtn{
    //TO SHOW TABLEVIEW
    NSLog(@"点击按钮发送grade通知");
    self.gradeBtn.selected = !self.gradeBtn.selected;
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"ShowGradeTableView11" object:self.gradeBtn];
}

- (void)clickClassBtn{
    self.classBtn.selected = !self.classBtn.selected;
    [[NSNotificationCenter defaultCenter] postNotificationName:@"showCourseTableView" object:self.classBtn];
}

- (void)layoutSubviews{
    [super layoutSubviews];
    
    self.frame = CGRectMake(0, 157, LEOScreenW, 23);
    
    CGFloat btnW = LEOScreenW/2;
    CGFloat btnH = 23;
    self.gradeBtn.frame = CGRectMake(0, 0, btnW, btnH);
    self.separateView.frame = CGRectMake(btnW, 2, 0.5, 18);
    self.classBtn.frame = CGRectMake(btnW, 0, btnW, btnH);
}

@end
