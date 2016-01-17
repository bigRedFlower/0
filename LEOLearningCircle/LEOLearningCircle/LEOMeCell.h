//
//  LEOMeCell.h
//  LEOLearningCircle
//
//  Created by 李 on 16/1/17.
//  Copyright © 2016年 zz. All rights reserved.
//

#import <UIKit/UIKit.h>
@class LEOMeCellFrame,LEOMe;

@interface LEOMeCell : UITableViewCell

@property (nonatomic ,strong)LEOMeCellFrame *meFrame;


+ (instancetype)settingCellWithTableView:(UITableView *)tableView meFrame:(LEOMeCellFrame *)meFrame;

@end
