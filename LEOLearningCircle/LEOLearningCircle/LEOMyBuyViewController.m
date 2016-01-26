//
//  LEOMyBuyViewController.m
//  LEOLearningCircle
//
//  Created by  justinchou on 16/1/23.
//  Copyright © 2016年 zz. All rights reserved.
//

#import "LEOMyBuyViewController.h"

@interface LEOMyBuyViewController ()

@end

@implementation LEOMyBuyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    //显示导航条
    self.title = self.navTitle;
    self.navigationController.navigationBarHidden = NO;
}



@end
