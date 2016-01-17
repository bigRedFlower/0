//
//  LEOMainTabBarController.m
//  LearningCircle
//
//  Created by zz on 16/1/13.
//  Copyright © 2016年 zz. All rights reserved.
//

#import "LEOMainTabBarController.h"
#import "LEOBottomView.h"


#import "LEOMeController.h"
@interface LEOMainTabBarController ()

@end

@implementation LEOMainTabBarController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(changeViewControllerWith:) name:@"didBtn" object:nil];
    [self loadBottomView];
    
    //载入控制器
    [self loadSubControllers];
    
}
- (void)changeViewControllerWith:(NSNotification*)notify{
    
    self.selectedIndex = [notify.object intValue];
}

- (void)loadBottomView{
    
    LEOBottomView *bottomBar = [[LEOBottomView alloc]init];
    for (int i=0; i<4; i++) {
        NSString *normal = [NSString stringWithFormat:@"TabBar%d",i+1];
        NSString *selected = [NSString stringWithFormat:@"TabBar%d_sel",i+1];
        [bottomBar addBottomBarButtonWithImage:normal selected:selected];
    }
    bottomBar.frame = self.tabBar.frame;
//    [self.tabBar addSubview:bottomBar];
    
    
    [self.view addSubview:bottomBar];
    
}


- (void)loadSubControllers {
    
    LEOMeController *me = [[LEOMeController alloc]init];
    UINavigationController *navMe = [[UINavigationController alloc]initWithRootViewController:me];
    
    self.viewControllers = @[navMe,navMe,navMe,navMe];
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
