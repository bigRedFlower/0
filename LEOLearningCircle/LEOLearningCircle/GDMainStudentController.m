//
//  GDMainStudentController.m
//  LEOLearningCircle
//
//  Created by Geeven on 16/1/17.
//  Copyright © 2016年 zz. All rights reserved.
//

#import "GDMainStudentController.h"
#import "GDVoiceMainVController.h"
#import "GDTextMainVController.h"
#import "GDQutionListTController.h"


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

#pragma mark - systerm
-(void)viewWillAppear:(BOOL)animated{

    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = YES;

}

-(void)viewWillDisappear:(BOOL)animated{

    [super viewWillDisappear:animated];
    self.navigationController.navigationBarHidden = NO;
}

-(UIStatusBarStyle)preferredStatusBarStyle{

    return UIStatusBarStyleLightContent;

}

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.view.backgroundColor = [UIColor whiteColor];

    self.view.layer.contents = (__bridge id _Nullable)([UIImage imageNamed:@"now_16"].CGImage);
    
    [self loadSubViews];
    
}

-(void)loadSubViews{

    //1.顶部视图
    UIImageView * headImageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 20,MainSize.width ,150)];
    headImageView.image = [UIImage imageNamed:@"now_answerBackGround"];
    [self.view addSubview:headImageView];
    
    //2.设置中间拍照视图
    UIImage * photoesImage = [UIImage imageNamed:@"now_9"];
    UIImageView * photoImageView = [[UIImageView alloc]initWithImage:photoesImage];
    
    CGFloat photoImageX = (MainSize.width - photoesImage.size.width)*0.5;
    CGFloat photoImageY = CGRectGetMaxY(headImageView.frame);
    CGFloat photoImageW = photoesImage.size.width;
    CGFloat photoImageH = photoesImage.size.height;
    photoImageView.frame = CGRectMake(photoImageX,photoImageY,photoImageW,photoImageH);
   
    UIButton * photoBtn = [self creatButtonWithImageView:photoImageView];
    [photoBtn addTarget:self action:@selector(didClickBtn:) forControlEvents:UIControlEventTouchUpInside];
    photoBtn.tag = 2;
    [photoImageView addSubview:photoBtn];
    photoImageView.userInteractionEnabled = YES;

    [self.view addSubview:photoImageView];
    
    //3.设置左边语音视图
    UIImage * voiceImage = [UIImage imageNamed:@"now_8"];
    UIImageView * voiceImageView = [[UIImageView alloc]initWithImage:voiceImage];
    
    CGFloat voiceImageViewX = CGRectGetMinX(photoImageView.frame) - voiceImage.size.width - Margin;
    CGFloat voiceImageViewY = CGRectGetMinY(photoImageView.frame) - headImageView.bounds.size.height*0.5;
    CGFloat voiceImageViewW = voiceImage.size.width;
    CGFloat voiceImageViewH = voiceImage.size.height;
    voiceImageView.frame = CGRectMake(voiceImageViewX,voiceImageViewY,voiceImageViewW, voiceImageViewH);
    
    UIButton * voiceBtn = [self creatButtonWithImageView:voiceImageView];
    [voiceBtn addTarget:self action:@selector(didClickBtn:) forControlEvents:UIControlEventTouchUpInside];
    voiceBtn.tag = 1;
    [voiceImageView addSubview:voiceBtn];
    voiceImageView.userInteractionEnabled = YES;
    
    [self.view addSubview:voiceImageView];
    
    
    //4.设置右侧文本视图
    UIImage * textImage = [UIImage imageNamed:@"now_10"];
    UIImageView * textImageView = [[UIImageView alloc]initWithImage:textImage];
    
    CGFloat textImageViewX = CGRectGetMaxX(photoImageView.frame) + Margin;
    CGFloat textImageViewY = CGRectGetMinY(photoImageView.frame) + headImageView.bounds.size.height*0.5;
    CGFloat textImageViewW = textImage.size.width;
    CGFloat textImageViewH = textImage.size.height;
    textImageView.frame = CGRectMake(textImageViewX,textImageViewY,textImageViewW, textImageViewH);
    
    UIButton * textBtn = [self creatButtonWithImageView:textImageView];
    [textBtn addTarget:self action:@selector(didClickBtn:) forControlEvents:UIControlEventTouchUpInside];
    textBtn.tag = 3;
    [textImageView addSubview:textBtn];
    textImageView.userInteractionEnabled = YES;
    
    [self.view addSubview:textImageView];
    
    //5.设置右侧问题列表控制器
    UIButton * questionBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    UIImage * btnImage = [UIImage imageNamed:@"now_2"];
    [questionBtn setBackgroundImage:btnImage forState:UIControlStateNormal];
    CGFloat btnY = CGRectGetMaxY(self.navigationController.navigationBar.frame) - btnImage.size.height;
    questionBtn.frame = CGRectMake(MainSize.width-btnImage.size.width-Margin,btnY , btnImage.size.width, btnImage.size.height);
    
    [questionBtn addTarget:self action:@selector(didClickBtn:) forControlEvents:UIControlEventTouchUpInside];
    questionBtn.tag = 4;
    [self.view addSubview:questionBtn];
    
}


-(void)didClickBtn:(UIButton*)btn{
    if (btn.tag == 1) {
        GDVoiceMainVController * voiceMainVc = [[GDVoiceMainVController alloc]init];
        [self.navigationController pushViewController:voiceMainVc animated:YES];
       
    }
    if (btn.tag == 2) {
        
        
    }
    if (btn.tag == 3) {
        GDTextMainVController * textMainVc = [[GDTextMainVController alloc]init];
        [self.navigationController pushViewController:textMainVc animated:YES];
    }
    if (btn.tag == 4) {
        GDQutionListTController * questionListTC = [[GDQutionListTController alloc]init];
        questionListTC.navigationItem.title = @"问题列表";
        [self.navigationController pushViewController:questionListTC animated:YES];
    }
}


-(UIButton*)creatButtonWithImageView:(UIImageView*)imageView{
    
    CGFloat BtnW = CGRectGetWidth(imageView.frame);
    CGFloat BtnH = BtnW*1.4;
    CGFloat BtnY = imageView.bounds.size.height - BtnH;
    UIButton * tmpBtn = [[UIButton alloc]initWithFrame:CGRectMake(0, BtnY, BtnW, BtnH)];
//    tmpBtn.backgroundColor = [UIColor redColor];
//    tmpBtn.alpha = 0.2;
    return tmpBtn;
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
