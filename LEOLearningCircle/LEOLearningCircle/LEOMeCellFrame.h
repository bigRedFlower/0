//
//  LEOMeCellFrame.h
//  LEOLearningCircle
//
//  Created by 李 on 16/1/17.
//  Copyright © 2016年 zz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class LEOMe;

@interface LEOMeCellFrame : NSObject

@property (nonatomic ,assign, readonly)CGRect iconFrame;
@property (nonatomic, assign, readonly)CGRect titleFrame;


@property (nonatomic, assign)CGFloat cellHeight;

@property (nonatomic, strong)LEOMe *meModel;

@end
