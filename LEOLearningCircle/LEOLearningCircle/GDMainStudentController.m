//
//  GDMainStudentController.m
//  LEOLearningCircle
//
//  Created by Geeven on 16/1/17.
//  Copyright © 2016年 zz. All rights reserved.
//

#import "GDMainStudentController.h"


#define MainSize  [UIScreen mainScreen].bounds.size
#define Margin 25

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

    self.view.layer.contents = (__bridge id _Nullable)([UIImage imageNamed:@"now_16"].CGImage);
    
    
    
    
    self.navigationController.navigationBarHidden = YES;

//    self.hidesBottomBarWhenPushed  = YES;
    
    [self loadSubViews];
    
   

}


-(void)loadSubViewsLogIn{


}
-(void)loadSubViews{
    
    
    
    UIImageView * headImageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0,MainSize.width ,200)];
    headImageView.image = [UIImage imageNamed:@"now_answerBackGround"];
    [self.view addSubview:headImageView];
    
    //1.设置中间拍照视图
    UIImage * photoesImage = [UIImage imageNamed:@"now_9"];
    UIImageView * photoImageView = [[UIImageView alloc]initWithImage:photoesImage];
    
    CGFloat photoImageX = (MainSize.width - photoesImage.size.width)*0.5;
    CGFloat photoImageY = CGRectGetMaxY(headImageView.frame);
    CGFloat photoImageW = photoesImage.size.width;
    CGFloat photoImageH = photoesImage.size.height;
    photoImageView.frame = CGRectMake(photoImageX,photoImageY,photoImageW,photoImageH);
    
    [self.view addSubview:photoImageView];
    
    //2.设置左边语音视图
    UIImage * voiceImage = [UIImage imageNamed:@"now_8"];
    UIImageView * voiceImageView = [[UIImageView alloc]initWithImage:voiceImage];
    
    CGFloat voiceImageViewX = CGRectGetMinX(photoImageView.frame) - voiceImage.size.width - Margin;
    CGFloat voiceImageViewY = CGRectGetMinY(photoImageView.frame) - headImageView.bounds.size.height*0.5;
    CGFloat voiceImageViewW = voiceImage.size.width;
    CGFloat voiceImageViewH = voiceImage.size.height;
    voiceImageView.frame = CGRectMake(voiceImageViewX,voiceImageViewY,voiceImageViewW, voiceImageViewH);
    
    [self.view addSubview:voiceImageView];
    
    
    //3.设置右侧文本视图
    UIImage * textImage = [UIImage imageNamed:@"now_10"];
    UIImageView * textImageView = [[UIImageView alloc]initWithImage:textImage];
    
    CGFloat textImageViewX = CGRectGetMaxX(photoImageView.frame) + Margin;
    CGFloat textImageViewY = CGRectGetMinY(photoImageView.frame) + headImageView.bounds.size.height*0.5;
    CGFloat textImageViewW = textImage.size.width;
    CGFloat textImageViewH = textImage.size.height;
    textImageView.frame = CGRectMake(textImageViewX,textImageViewY,textImageViewW, textImageViewH);
    
    [self.view addSubview:textImageView];

    
    
    
    
    



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
