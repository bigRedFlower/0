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
    
    self.navigationController.navigationBar.hidden = YES;
    
    //去掉tableView的分割线
    self.tableView.separatorStyle = NO;
    
    LEOMeHeadView *headView = [[LEOMeHeadView alloc]initWithFrame:CGRectMake(0, 0, 375, 135)];

    self.tableView.tableHeaderView = headView;
 
    

    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
