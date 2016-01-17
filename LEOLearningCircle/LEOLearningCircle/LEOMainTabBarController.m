//
//  LEOMainTabBarController.m
//  LearningCircle
//
//  Created by zz on 16/1/13.
//  Copyright © 2016年 zz. All rights reserved.
//

#import "LEOMainTabBarController.h"
//导航控制器
#import "LEOMainNavController.h"
#import "LEOFriendsNavController.h"
#import "GDMainNController.h"

#import "LEOFriendsController.h"
#import "LEOMeController.h"
@interface LEOMainTabBarController ()

@end

@implementation LEOMainTabBarController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    [self addChildViewControllers];
    
}
//添加子控制器
- (void)addChildViewControllers{
    
    LEOFriendsController *friend = [[LEOFriendsController alloc]init];
    [self addOneChindVc:friend title:@"伙伴圈" imageNamed:@"TabBar1" selectedImage:@"TabBar1_sel"];
    LEOMeController *me = [[LEOMeController alloc]init];
    [self addOneChindVc:me title:@"我" imageNamed:@"TabBar4" selectedImage:@"TabBar4_sel"];
    
    
}

- (void)addOneChindVc:(UIViewController*)childVc title:(NSString*)title imageNamed:(NSString*)imageName selectedImage:(NSString*)selectedImageName{
    
    childVc.title = title;
    
    childVc.tabBarItem.image = [UIImage imageNamed:imageName];
    
    UIImage *selectedImage = [UIImage imageNamed:selectedImageName];
    selectedImage = [selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    childVc.tabBarItem.selectedImage = selectedImage;
    
    LEOMainNavController *nav = [[LEOMainNavController alloc]initWithRootViewController:childVc];
    [self addChildViewController:nav];
    
}





- (void)loadSubControllers {
    
    LEOMeController *me = [[LEOMeController alloc]init];
    UINavigationController *navMe = [[UINavigationController alloc]initWithRootViewController:me];
    
    GDMainNController * answerNow = [[GDMainNController alloc]init];

    self.viewControllers = @[navMe,navMe,answerNow,navMe];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
