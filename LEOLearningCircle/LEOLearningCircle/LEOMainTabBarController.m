//
//  LEOMainTabBarController.m
//  LearningCircle
//
//  Created by zz on 16/1/13.
//  Copyright © 2016年 zz. All rights reserved.
//

#import "LEOMainTabBarController.h"
<<<<<<< HEAD
#import "LEOBottomView.h"
#import "GDAnswerNVController.h"
=======
>>>>>>> origin/master

#import "LEOMainNavController.h"

#import "LEOFriendsController.h"
#import "LEOMeController.h"
@interface LEOMainTabBarController ()

@end

@implementation LEOMainTabBarController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    [self addChildViewControllers];
    
}
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
    
<<<<<<< HEAD
    GDAnswerNVController * answerNowNc = [[GDAnswerNVController alloc]init];
    
    self.viewControllers = @[navMe,navMe,answerNowNc,navMe];
=======
>>>>>>> origin/master
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
