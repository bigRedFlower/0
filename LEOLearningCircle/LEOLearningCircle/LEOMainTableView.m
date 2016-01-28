//
//  LEOMainTableView.m
//  LEOLearningCircle
//
//  Created by  justinchou on 16/1/24.
//  Copyright © 2016年 zz. All rights reserved.
//

#import "LEOMainTableView.h"

@interface LEOMainTableView () <UITableViewDataSource, UITableViewDelegate>

@end

@implementation LEOMainTableView

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style{
    self = [super initWithFrame:frame style:style];
    
    self.delegate = self;
    self.dataSource = self;
    
    return self;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 80;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return 15;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *ID = @"main_cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"标题%ld",indexPath.row+1];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"副标题%ld",indexPath.row+1];
    cell.imageView.image = [UIImage imageNamed:@"now_44"];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"选中了主要tableview的cell！");
}

@end
