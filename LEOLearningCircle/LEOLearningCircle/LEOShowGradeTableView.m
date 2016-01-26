//
//  LEOShowGradeTableView.m
//  LEOLearningCircle
//
//  Created by  justinchou on 16/1/23.
//  Copyright © 2016年 zz. All rights reserved.
//

#import "LEOShowGradeTableView.h"

@interface LEOShowGradeTableView () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSMutableArray *grade;

@end

@implementation LEOShowGradeTableView

- (NSMutableArray *)grade{
    if (!_grade) {
        _grade = [[NSMutableArray alloc] init];
    }
    return _grade;
}

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style{
    self = [super initWithFrame:frame style:style];
    
    self.delegate = self;
    self.dataSource = self;
    self.separatorStyle = UITableViewCellSeparatorStyleNone;

    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    [self selectRowAtIndexPath:indexPath animated:YES scrollPosition:UITableViewScrollPositionMiddle];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(showGradeTableView:) name:@"ShowGradeTableView11" object:nil];
    NSLog(@"注册grade的通知监听者");
    return self;
}

- (void)showGradeTableView:(NSNotification *)notify{
    NSLog(@"年级Grade通知进行处理！");
    self.hidden = NO;
//    self.hidden = !self.hidden;
    NSLog(@"%d",self.hidden);
}

// -- Todo
//post networking request

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 20;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *ID = @"grade_cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    cell.textLabel.textAlignment = NSTextAlignmentCenter;
    cell.textLabel.text = @"哈哈哈";

    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //to show the according tableview of the class
}

- (void)dealloc{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
