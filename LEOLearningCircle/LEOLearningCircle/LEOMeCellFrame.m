//
//  LEOMeCellFrame.m
//  LEOLearningCircle
//
//  Created by 李 on 16/1/17.
//  Copyright © 2016年 zz. All rights reserved.
//


#import "LEOMeCellFrame.h"
#import "LEOMe.h"
@implementation LEOMeCellFrame


- (void)setMeModel:(LEOMe *)meModel {
    
    _meModel = meModel;
    
    CGFloat padding = 10;
    
    CGFloat iconW = 34;
    CGFloat iconH = iconW;
    CGFloat iconX = 40;
    CGFloat iconY = padding;
    _iconFrame =CGRectMake(iconX, iconY, iconW, iconH);
    
    CGSize titleSize = CGSizeMake(355, MAXFLOAT);
    NSDictionary *textDict = @{NSFontAttributeName : [UIFont systemFontOfSize:17]};
    CGSize textSize = [meModel.title boundingRectWithSize:titleSize options:NSStringDrawingUsesLineFragmentOrigin attributes:textDict context:nil].size;
    CGFloat titleX = CGRectGetMaxX(_iconFrame) + 3 * padding;
    CGFloat titleY = padding + (iconH - textSize.height) * 0.5;
    _titleFrame = CGRectMake(titleX, titleY, textSize.width, textSize.height);
    
    _cellHeight = CGRectGetMaxY(_iconFrame) + padding;
}

@end
