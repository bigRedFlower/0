//
//  GDMainStudentController.m
//  LEOLearningCircle
//
//  Created by Geeven on 16/1/17.
//  Copyright © 2016年 zz. All rights reserved.
//

#import "GDMainStudentController.h"

@interface GDMainStudentController ()

@property (nonatomic,strong)UIButton * leftAnswerBtn;

@property (nonatomic,strong)UIButton * rigthQuestionBtn;

@property (nonatomic,strong)UIButton * voiceBtn;

@property (nonatomic,strong)UIButton * photoesBtn;

@property (nonatomic,strong)UIButton * textBtn;




@end

@implementation GDMainStudentController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.navigationController.navigationBarHidden = YES;

//    self.hidesBottomBarWhenPushed  = YES;
    
    [self loadSubViews];
    


}

-(void)loadSubViews{



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
