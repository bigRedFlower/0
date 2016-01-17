//
//  GDMainNController.m
//  LEOLearningCircle
//
//  Created by Geeven on 16/1/17.
//  Copyright © 2016年 zz. All rights reserved.
//

#import "GDMainNController.h"
#import "GDMainStudentController.h"
#import "GDMainTeacherVController.h"

@interface GDMainNController ()

@end

@implementation GDMainNController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(instancetype)init{
    if (self = [super init]) {
        
        GDMainStudentController * stVc = [[GDMainStudentController alloc]init];
        self = [self initWithRootViewController:stVc];
    }
    return self;

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
