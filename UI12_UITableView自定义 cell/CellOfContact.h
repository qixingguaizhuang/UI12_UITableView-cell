//
//  CellOfContact.h
//  UI12_UITableView自定义 cell
//
//  Created by dllo on 15/12/28.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CellOfContact : UITableViewCell

/** 将 cell 上得子控件声明为属性, 方便外面赋值*/

@property (nonatomic, retain) UIImageView *imageViewLeft;

@property (nonatomic, retain) UIImageView *imageViewCenter;

@property (nonatomic, retain) UIImageView *imageViewRight;


@end
