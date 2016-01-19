//
//  LEOMeController.m
//  LEOLearningCircle
//
//  Created by 李 on 16/1/17.
//  Copyright © 2016年 zz. All rights reserved.
//

#import "LEOMeController.h"
#import "LEOMe.h"
#import "LEOMeCell.h"
#import "LEOMeCellFrame.h"
#import "LEOMeHeadView.h"
#import "LEORegisterController.h"
@interface LEOMeController ()

@property (nonatomic ,strong)NSArray *meFrames;

@end

@implementation LEOMeController


#pragma mark -懒加载
- (NSArray *)meFrames {
    if (!_meFrames) {
        
        NSString *path = [[NSBundle mainBundle] pathForResource:@"LEOMe.plist" ofType:nil];
        NSArray *dictArray = [NSArray arrayWithContentsOfFile:path];
        NSMutableArray *tempArray = [NSMutableArray array];
        
        for (NSDictionary *dict in dictArray) {
            LEOMeCellFrame *frame = [[LEOMeCellFrame alloc]init];
            LEOMe *me =[[LEOMe alloc]init];
            me.title = dict[@"title"];
            me.icon = dict[@"icon"];
            frame.meModel = me;
            [tempArray addObject:frame];
        }
        _meFrames = tempArray;
    }
    return _meFrames;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    //去掉tableView的分割线
    self.tableView.separatorStyle = NO;
    self.tableView.scrollEnabled = NO;
    [self statusViewToBlackColor];

    //添加tableView的headView
    LEOMeHeadView *headView = [[LEOMeHeadView alloc]initWithFrame:CGRectMake(0, 0, 375, 135)];
    self.tableView.tableHeaderView = headView;
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(registerAccount)];
    [headView addGestureRecognizer:tap];
    
    [self.navigationController setNeedsStatusBarAppearanceUpdate];
    
   
    
 
}

//隐藏控制器navgationBar
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}

- (void)statusViewToBlackColor {
    UIView *status = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 20)];
    status.backgroundColor = [UIColor blackColor];
    UIView *backgroundView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, LEOScreenH, LEOScreenW)];
    [backgroundView addSubview:status];
    self.tableView.backgroundView  = backgroundView;
}

- (void)registerAccount {
    LEORegisterController *registerVc = [[LEORegisterController alloc]init];
    [self.navigationController pushViewController:registerVc animated:YES];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.meFrames.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    LEOMeCellFrame *meFrame = self.meFrames[indexPath.row];
    LEOMeCell *cell = [LEOMeCell settingCellWithTableView:tableView meFrame:meFrame];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    LEOMeCellFrame *cellFrame = self.meFrames[indexPath.row];
    return cellFrame.cellHeight;
}




@end
