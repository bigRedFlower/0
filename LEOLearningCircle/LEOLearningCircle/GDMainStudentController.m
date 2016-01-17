//
//  GDMainStudentController.m
//  LEOLearningCircle
//
//  Created by Geeven on 16/1/17.
//  Copyright © 2016年 zz. All rights reserved.
//

#import "GDMainStudentController.h"

@interface GDMainStudentController ()

@end

@implementation GDMainStudentController

- (void)viewDidLoad {
    [super viewDidLoad];
//    测试用
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"即时答背景"]];
    self.title = nil;
    self.navigationController.navigationBarHidden = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
