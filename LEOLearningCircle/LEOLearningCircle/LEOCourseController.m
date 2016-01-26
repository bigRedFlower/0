//
//  LEOCourseController.m
//  LEOLearningCircle
//
//  Created by  justinchou on 16/1/21.
//  Copyright © 2016年 zz. All rights reserved.
//

#import "LEOCourseController.h"
#import "LEOCourseHeaderView.h"
#import "LEOCourseBtnView.h"
#import "LEOShowGradeTableView.h"
#import "LEOCoursePopView.h"
#import "LEOShowCourseTableView.h"
#import "LEOMainTableView.h"

@interface LEOCourseController ()

@property (nonatomic, strong) LEOShowGradeTableView *showGradeView;
@property (nonatomic, strong) LEOShowCourseTableView *showCourseView;

@property (nonatomic, strong) UIView *mainView;

@end

@implementation LEOCourseController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //init header View
    LEOCourseHeaderView *headerView = [[LEOCourseHeaderView alloc] initWithFrame:CGRectMake(0, 20, LEOScreenW, 137)];
    headerView.popView.vc = self;
    [self.view addSubview:headerView];
    //下拉菜单按钮
    LEOCourseBtnView *btnView = [[LEOCourseBtnView alloc] initWithFrame:CGRectMake(0, 157, LEOScreenW, 23)];
    [self.view addSubview:btnView];
    //下拉菜单显示的Gradetableview
    LEOShowGradeTableView *showGradeView = [[LEOShowGradeTableView alloc] initWithFrame:CGRectMake(0, 180, LEOScreenW/2, 0) style:UITableViewStylePlain];
    self.showGradeView = showGradeView;
    self.showGradeView.hidden = YES;
    [self.view addSubview:self.showGradeView];
    
    //    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(showGradeTableView:) name:@"showGradeTableView" object:nil];
    
    LEOShowCourseTableView *showCourseView = [[LEOShowCourseTableView alloc] initWithFrame:CGRectMake(LEOScreenW/2+1, 180, LEOScreenW/2, 0) style:UITableViewStylePlain];
    self.showCourseView = showCourseView;
    self.showCourseView.hidden = YES;
    [self.view addSubview:self.showCourseView];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(showCourseTableView:) name:@"showCourseTableView" object:nil];
    
    
    //init the mainTV(show the course &&grade media)
    LEOMainTableView *mainView = [[LEOMainTableView alloc] initWithFrame:CGRectMake(0, 180, LEOScreenW, LEOScreenH-49-180) style:UITableViewStylePlain];
    self.mainView = mainView;
    [self.view addSubview:self.mainView];
}

//- (void)showGradeTableView:(NSNotification *)notify{
//    NSLog(@"收到通知");
////    self.showGradeView.hidden = !self.showGradeView.hidden;
//    UIButton *btn = notify.object;
//    if (btn.selected) {
//        [UIView animateWithDuration:1.0 animations:^{
//            self.showGradeView.hidden = NO;
//            self.showGradeView.frame = CGRectMake(0, 180, LEOScreenW/2, 150);
//        } completion:nil];
//    }else{
//        [UIView animateWithDuration:1.0 animations:^{
//            self.showGradeView.frame = CGRectMake(0, 180, LEOScreenW/2, 0);
//        } completion:^(BOOL finished) {
//            self.showGradeView.hidden = YES;
//        }];
//    }
//
//}

- (void)showCourseTableView:(NSNotification *)notify{
    NSLog(@"Course收到通知");
    self.showCourseView.hidden = !self.showCourseView.hidden;
    
//    this following code is invalid
//    [self.showCourseView bringSubviewToFront:self.view];
    UIButton *btn = notify.object;
    if (btn.isSelected == 1) {
        NSLog(@"选中状态");
        [UIView animateWithDuration:0.5 animations:^{
            self.mainView.alpha = 0.5;
            self.mainView.userInteractionEnabled = NO;
            self.showCourseView.hidden = NO;
            self.showCourseView.frame = CGRectMake(LEOScreenW/2+1, 180, LEOScreenW/2, 150);
        } completion:^(BOOL finished) {
            [self.showCourseView reloadData];
        }];
    }
    
    // Q:the animation of shrink is invalid
    if(btn.isSelected == 0){
        NSLog(@"非选中状态");
        [UIView animateWithDuration:2.0 animations:^{
            self.mainView.alpha = 1.0;
            self.mainView.userInteractionEnabled = YES;
            self.showCourseView.frame = CGRectMake(LEOScreenW/2+1, 180, LEOScreenW/2, 0);
        } completion:^(BOOL finished) {
            [self.showCourseView reloadData];
            self.showCourseView.hidden = YES;
        }];
    }
}

//let the text of statusBar tintcolor be white
- (UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

//hide navigationBarHidden must be written here!
- (void)viewWillAppear:(BOOL)animated{
    //隐藏导航条
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = YES;
}

- (void)dealloc{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
