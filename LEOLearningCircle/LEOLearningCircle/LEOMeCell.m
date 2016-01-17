//
//  LEOMeCell.m
//  LEOLearningCircle
//
//  Created by 李 on 16/1/17.
//  Copyright © 2016年 zz. All rights reserved.
//

#import "LEOMeCell.h"
#import "LEOMe.h"
#import "LEOMeCellFrame.h"

@interface LEOMeCell ()

@property (nonatomic, weak)UIImageView *iconView;
@property (nonatomic, weak)UILabel *titleView;

@end

@implementation LEOMeCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
    
        UIImageView *iconView = [UIImageView new];
        [self.contentView addSubview:iconView];
        self.iconView = iconView;
        
        UILabel *titleView = [UILabel new];
        [self.contentView addSubview:titleView];
        self.titleView = titleView;
    }
    return  self;
}


+ (instancetype)settingCellWithTableView:(UITableView *)tableView meFrame:(LEOMeCellFrame *)meFrame {
    
    static NSString *ID = @"meCell";
    LEOMeCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[LEOMeCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    cell.meFrame = meFrame;
    return cell;
}


- (void)setMeFrame:(LEOMeCellFrame *)meFrame {

    _meFrame = meFrame;
    self.iconView.frame = self.meFrame.iconFrame;
    self.titleView.frame = self.meFrame.titleFrame;
    
    self.iconView.image = [UIImage imageNamed:meFrame.meModel.icon];
    self.titleView.text = meFrame.meModel.title;
}


@end
