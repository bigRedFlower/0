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
#import "LEOMeNavController.h"

#import "LEOFriendsController.h"
#import "LEOMeController.h"
#import "GDMainStudentController.h"
@interface LEOMainTabBarController ()

@end

@implementation LEOMainTabBarController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    [self addChildViewControllers];
    
}


//添加子控制器
- (void)addChildViewControllers{
    
    //伙伴圈
    LEOFriendsController *friend = [[LEOFriendsController alloc]init];
    LEOFriendsNavController *friendNav = [[LEOFriendsNavController alloc]initWithRootViewController:friend];
    [self addOneChindVc:friend title:@"伙伴圈" imageNamed:@"TabBar1" selectedImage:@"TabBar1_sel" NavigationController:friendNav];
    
    //即时答
    GDMainStudentController *stu = [[GDMainStudentController alloc]init];
    GDMainNController *stuNav = [[GDMainNController alloc]initWithRootViewController:stu];
    [self addOneChindVc:stu title:@"即时答" imageNamed:@"TabBar2" selectedImage:@"TabBar2_sel" NavigationController:stuNav];
    
    //我
    LEOMeController *me = [[LEOMeController alloc]init];
    LEOMainNavController *meNav = [[LEOMainNavController alloc]initWithRootViewController:me];
    [self addOneChindVc:me title:@"我" imageNamed:@"TabBar4" selectedImage:@"TabBar4_sel" NavigationController:meNav];
    
    
}

- (void)addOneChindVc:(UIViewController*)childVc title:(NSString*)title imageNamed:(NSString*)imageName selectedImage:(NSString*)selectedImageName NavigationController:(UINavigationController*)nav{
    //设置控制器的标题
    childVc.title = title;
    //设置普通状态下tabbar的图片
    childVc.tabBarItem.image = [UIImage imageNamed:imageName];
    //设置选中状态下tabbar的图片
    UIImage *selectedImage = [UIImage imageNamed:selectedImageName];
    //用最原始的渲染模式渲染
    selectedImage = [selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    childVc.tabBarItem.selectedImage = selectedImage;
    //将导航控制器加入到tabbar控制器中
    [self addChildViewController:nav];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
