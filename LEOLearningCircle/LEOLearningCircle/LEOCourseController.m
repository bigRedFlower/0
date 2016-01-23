//
//  LEOCourseController.m
//  LEOLearningCircle
//
//  Created by  justinchou on 16/1/21.
//  Copyright © 2016年 zz. All rights reserved.
//

#import "LEOCourseController.h"
#import "LEOCourseHeaderView.h"

@interface LEOCourseController ()

@end

@implementation LEOCourseController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    LEOCourseHeaderView *headerView = [[LEOCourseHeaderView alloc] initWithFrame:CGRectMake(0, 20, LEOScreenW, 137)];
    [self.view addSubview:headerView];
    
}

- (UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
