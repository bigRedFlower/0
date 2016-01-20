//
//  LEOFriendsController.m
//  LEOLearningCircle
//
//  Created by zz on 16/1/17.
//  Copyright © 2016年 zz. All rights reserved.
//

#import "LEOFriendsController.h"

#define LEOScreenW [UIScreen mainScreen].bounds.size.width
#define LEOScreenH [UIScreen mainScreen].bounds.size.height
#define LEOHeaderH 150
@interface LEOFriendsController ()

@property (nonatomic, strong) UIImageView *headerImgView;
@end

@implementation LEOFriendsController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    //self.tableView.backgroundColor = [UIColor blackColor];
    
    
    [self setBackGroundView];
    self.view.backgroundColor = [UIColor blackColor];
    self.tableView.backgroundColor = [UIColor blackColor];
    self.navigationController.navigationBarHidden = YES;
    //取消分割线
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
//    self.view.backgroundColor = [UIColor blackColor];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//设置状态栏的样式
- (UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}
//设置头部下拉视图
//- (void)setBackGroundView{
////    UIView *blackView = [[UIView alloc ]initWithFrame:CGRectMake(0, 0, LEOScreenW, 20)];
////    blackView.backgroundColor = [UIColor blackColor];
//    
//    
//    UIImageView *headerView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 20, LEOScreenW, LEOHeaderH)];
//    headerView.contentMode = UIViewContentModeScaleToFill;
//    headerView.image = [UIImage imageNamed:@"friend_background"];
//    UIView *backGroundView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, LEOScreenW, LEOScreenH)];
////    [backGroundView addSubview:blackView];
//    [backGroundView addSubview:headerView];
//    self.headerImgView = headerView;
//    self.tableView.backgroundView = backGroundView;
//}

- (void)setBackGroundView{
    
    UIImageView *headerView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"friend_background"]];
    headerView.contentMode = UIViewContentModeScaleToFill;
    UIView *backGroundView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 0, 200)];

    [backGroundView addSubview:headerView];
    self.headerImgView = headerView;
    self.tableView.tableHeaderView = backGroundView;
    self.tableView.tableHeaderView.frame = CGRectMake(0, 0, 0, 200);
    
}

//
//- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
//    CGRect tempRect = self.headerImgView.frame;
//    if (scrollView.contentOffset.y>0) {
//        tempRect.origin.y = - scrollView.contentOffset.y;
//        self.headerImgView.frame = tempRect;
//    }else{
//        
//        tempRect.origin.y = 20;
//        tempRect.size.height = LEOHeaderH - scrollView.contentOffset.y;
//        
//        self.headerImgView.frame = tempRect;
//    }
//}



#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
