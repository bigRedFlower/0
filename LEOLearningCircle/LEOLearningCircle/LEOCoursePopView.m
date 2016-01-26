//
//  LEOCoursePopView.m
//  LEOLearningCircle
//
//  Created by  justinchou on 16/1/22.
//  Copyright © 2016年 zz. All rights reserved.
//

#import "LEOCoursePopView.h"
#import "LEOMyBuyViewController.h"

@interface LEOCoursePopView ()

@property (nonatomic, strong) UIButton *myBuyBtn;
@property (nonatomic, strong) UIButton *myCollectionBtn;
@property (nonatomic, strong) UIButton *myDownloadBtn;


@end

@implementation LEOCoursePopView

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"56456465646"]];
    
    self.myBuyBtn = [[UIButton alloc] init];
    [self.myBuyBtn setTitle:@"我的购买" forState:UIControlStateNormal];
    [self.myBuyBtn addTarget:self action:@selector(clickOptionalBtn:) forControlEvents:UIControlEventTouchUpInside];
    self.myBuyBtn.titleLabel.font = [UIFont systemFontOfSize:10];
    [self addSubview:self.myBuyBtn];
    
    self.myCollectionBtn = [[UIButton alloc] init];
    [self.myCollectionBtn setTitle:@"我的收藏" forState:UIControlStateNormal];
    [self.myCollectionBtn addTarget:self action:@selector(clickOptionalBtn:) forControlEvents:UIControlEventTouchUpInside];
    self.myCollectionBtn.titleLabel.font = [UIFont systemFontOfSize:10];
    [self addSubview:self.myCollectionBtn];
    
    self.myDownloadBtn = [[UIButton alloc] init];
    [self.myDownloadBtn setTitle:@"我的下载" forState:UIControlStateNormal];
    [self.myDownloadBtn addTarget:self action:@selector(clickOptionalBtn:) forControlEvents:UIControlEventTouchUpInside];
    self.myDownloadBtn.titleLabel.font = [UIFont systemFontOfSize:10];
    [self addSubview:self.myDownloadBtn];
    
    return self;
}


- (void)clickOptionalBtn:(UIButton *)sender{
        LEOMyBuyViewController *vc = [[LEOMyBuyViewController alloc] init];
        vc.navTitle = sender.titleLabel.text;
        [self.vc.navigationController pushViewController:vc animated:YES];
}

- (void)layoutSubviews{
    [super layoutSubviews];
    
    [self sizeToFit];
    self.frame = CGRectMake(310, 46, self.bounds.size.width, self.bounds.size.height);
    
    [self.myBuyBtn sizeToFit];
    CGFloat commonWidth = self.myBuyBtn.bounds.size.width;
    CGFloat commonHeight = self.myBuyBtn.bounds.size.height;
    
    self.myBuyBtn.frame = CGRectMake(8, -2, commonWidth, commonHeight);
    
    [self.myCollectionBtn sizeToFit];
    self.myCollectionBtn.frame = CGRectMake(8, -2+self.bounds.size.height/3, commonWidth, commonHeight);
    
    [self.myDownloadBtn sizeToFit];
    self.myDownloadBtn.frame = CGRectMake(8, -2+2*self.bounds.size.height/3, commonWidth, commonHeight);
}


@end
