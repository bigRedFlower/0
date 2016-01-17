//
//  GDAnswerNVController.m
//  LEOLearningCircle
//
//  Created by Geeven on 16/1/17.
//  Copyright © 2016年 zz. All rights reserved.
//

#import "GDAnswerNVController.h"
#import "GDStudentMainTController.h"
#import "GDTeacherMainTController.h"

@interface GDAnswerNVController ()

@end

@implementation GDAnswerNVController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
   
}

//创建的时候用此方法创建
-(instancetype)init{
    if (self = [super init]) {
        
        //此处需要通过判断进行选择，现在先默认为student
        GDStudentMainTController * studentMain = [[GDStudentMainTController alloc]init];
        self = [self initWithRootViewController:studentMain];
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
