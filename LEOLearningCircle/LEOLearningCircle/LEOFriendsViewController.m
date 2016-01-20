//
//  LEOFriendsViewController.m
//  LEOLearningCircle
//
//  Created by zz on 16/1/20.
//  Copyright © 2016年 zz. All rights reserved.
//

#import "LEOFriendsViewController.h"

@interface LEOFriendsViewController ()<UITableViewDelegate>

@property (nonatomic, strong ) UITableView *tableView;
@property (nonatomic, strong ) UIImageView *headerImgView;
@end

@implementation LEOFriendsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBarHidden = YES;
    UITableView *tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 20, LEOScreenW, LEOScreenH-20)];
    tableView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:tableView];
    self.tableView = tableView;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.delegate = self;
    [self setBackGroundView];
}

- (void)setBackGroundView{

    UIImageView *headerView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, LEOScreenW, LEOHeaderH)];
    headerView.contentMode = UIViewContentModeScaleToFill;
    headerView.image = [UIImage imageNamed:@"friend_header"];
    UIView *backGroundView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, LEOScreenW, LEOScreenH)];
    [backGroundView addSubview:headerView];
    self.headerImgView = headerView;
    self.tableView.backgroundView = backGroundView;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    CGRect tempRect = self.headerImgView.frame;
    if (scrollView.contentOffset.y>0) {
        tempRect.origin.y = - scrollView.contentOffset.y;
        self.headerImgView.frame = tempRect;
    }else{
        tempRect.origin.y = 0;
        tempRect.size.height = LEOHeaderH - scrollView.contentOffset.y;
        self.headerImgView.frame = tempRect;
    }
}


-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
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
