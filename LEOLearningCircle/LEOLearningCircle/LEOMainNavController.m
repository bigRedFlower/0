//
//  LEOMainNavController.m
//  LearningCircle
//
//  Created by zz on 16/1/13.
//  Copyright © 2016年 zz. All rights reserved.
//

#import "LEOMainNavController.h"

@interface LEOMainNavController ()

@end

@implementation LEOMainNavController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    // Dispose of any resources that can be recreated.
}

- (void)setStatusBar:(UINavigationBar*)navBar{
    
}
+(void)initialize{
    
    UINavigationBar *navBar = [UINavigationBar appearance];
    [navBar setTintColor:[UIColor whiteColor]];
//    UIImage *img = [UIImage imageNamed:@"friend_41"];
//    img = [img stretchableImageWithLeftCapWidth:img.size.width * 0.5 topCapHeight:img.size.height * 0.5];
//    [navBar setBackgroundImage:img forBarMetrics:UIBarMetricsDefault];
    [navBar setBackgroundColor:[UIColor blackColor]];
    [navBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]}];
}
-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}


- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    if (self.viewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed = YES;
        
    }
    [super pushViewController:viewController animated:YES];
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
