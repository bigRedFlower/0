//
//  GDVoiceMainVController.m
//  LEOLearningCircle
//
//  Created by Geeven on 16/1/18.
//  Copyright © 2016年 zz. All rights reserved.
//

#import "GDVoiceMainVController.h"
#import "GDVoiceDoneVController.h"

@interface GDVoiceMainVController ()

@end

@implementation GDVoiceMainVController


- (void)viewDidLoad {
    [super viewDidLoad];
    

    //不能这样，这样设的话导航条会出问题
//    self.view.layer.contents = (__bridge id _Nullable)([UIImage imageNamed:@"now_16"].CGImage);
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    UIImage * navBackImage = [UIImage imageNamed:@"now_14"];
//    NSLog(@"%@",NSStringFromCGSize(navBackImage.size));

    [self.navigationController.navigationBar setBackgroundImage:navBackImage forBarMetrics:UIBarMetricsDefault];
    

    
    NSLog(@"%@",self.navigationController.navigationBar);



    
    
    self.navigationItem.title = @"采集语音";
    
    [self loadSubViews];
    
}



-(void)loadSubViews{

    UIImageView * voiceImageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"now_44"]];
    voiceImageView.center = CGPointMake(self.view.center.x, self.view.center.y-voiceImageView.bounds.size.height);
    
    
    
    UIImageView * backView1 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"now_45"]];
    backView1.center = CGPointMake(self.view.center.x - voiceImageView.bounds.size.width*0.5, voiceImageView.center.y-voiceImageView.bounds.size.height);
    
    
    UIImageView * backView2 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"now_46_3"]];
    backView2.center = voiceImageView.center;
    
    [self.view addSubview:backView2];
    [self.view addSubview:backView1];
    [self.view addSubview:voiceImageView];
    
    


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
