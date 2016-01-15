//
//  LEOBottomView.m
//  LEOLearningCircle
//
//  Created by zz on 16/1/16.
//  Copyright © 2016年 zz. All rights reserved.
//

#import "LEOBottomView.h"
#import "LEOBottomBarButton.h"

@interface LEOBottomView ()
@property (nonatomic, strong) UIButton *selectedButton;

@end

@implementation LEOBottomView

- (void)addBottomBarButtonWithImage:(NSString*)normal selected:(NSString*)selected{
    
    LEOBottomBarButton *button = [[LEOBottomBarButton alloc]init];
    //设置按钮的背景图片
    [button setImage:[UIImage imageNamed:normal] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:selected] forState:UIControlStateSelected];
    
    [button addTarget:self action:@selector(didClickButtomBarButton:) forControlEvents:UIControlEventTouchDown];
    [self addSubview:button];
    
}

//点击了底部的按钮
- (void)didClickButtomBarButton:(UIButton*)sender{
    
    self.selectedButton.selected = NO;
    sender.selected = YES;
    self.selectedButton = sender;
    [[NSNotificationCenter defaultCenter]postNotificationName:@"didBtn" object:@(sender.tag)];
    
}

//设置底部按钮的frame
- (void)layoutSubviews{
    
    CGFloat w = self.bounds.size.width / self.subviews.count;
    CGFloat h = self.bounds.size.height;
    CGFloat y = 0;
    for (int i=0; i<self.subviews.count; i++) {
        
        CGFloat x = i * w ;
        
        UIButton *button = self.subviews[i];
        button.tag = i;
        button.frame = CGRectMake(x, y, w, h);
    }
    
}


@end
