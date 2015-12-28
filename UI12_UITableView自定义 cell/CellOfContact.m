//
//  CellOfContact.m
//  UI12_UITableView自定义 cell
//
//  Created by dllo on 15/12/28.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import "CellOfContact.h"

@implementation CellOfContact


- (void)dealloc{

    [_imageViewCenter release];
    
    [_imageViewLeft release];
    
    [_imageViewRight release];
    
    [super dealloc];


}

/** 子控件的创建, 一般选择 cell 在创建的时候, cell 创建同时 子控件直接创建 */

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{


    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self) {
        
     
//        
//        self.imageViewLeft = [UIImageView alloc] initWithFrame:CGRectMake(self.contentView.frame, <#CGFloat y#>, <#CGFloat width#>, <#CGFloat height#>)
        
        
        NSLog(@"%s, %f,%f", __FUNCTION__, self.contentView.frame.size.width, self.contentView.frame.size.height);
        
        [self creatViewOfThird];

    }

    return self;
    
}



- (void)creatViewOfThird
{

    /** 三个子控件创建 */
    
    self.imageViewLeft = [[UIImageView alloc] init];
    
    self.imageViewLeft.backgroundColor = [UIColor redColor];
    
    // 注意添加到 cell.contentview 上
    
    
    [self.contentView addSubview:self.imageViewLeft];
    
    [_imageViewLeft release];
    
    
    
    /** 三个子控件创建 */
    
    self.imageViewCenter = [[UIImageView alloc] init];
    
    self.imageViewCenter.backgroundColor = [UIColor yellowColor];

    [self.contentView addSubview:self.imageViewCenter];
    
    [_imageViewCenter release];
    
    self.imageViewRight = [[UIImageView alloc] init];
    
    self.imageViewRight.backgroundColor = [UIColor brownColor];
    
    [self.contentView addSubview:self.imageViewRight];
    
    [_imageViewRight release];


}

/** 子控件的 frame 设置, 一般是在 layoutSubviews 方法中设置 .
 * layoutSubviews 是 UIview 的子视图, View 出现之前调用的方法.
 */

- (void)layoutSubviews{

    /** 必须先调用父类方法*/

    //NSLog(@"%s,%f, %f", __FUNCTION__ , self.contentView.frame.size.width, self.contentView.frame.size.height);
    
    [super layoutSubviews];
    
    CGFloat width = self.contentView.frame.size.width;
    
    CGFloat height = self.contentView.frame.size.height;
    
    self.imageViewLeft.frame = CGRectMake(10, 10,( width - 40)/3 , height  - 20);
    
    self.imageViewCenter.frame = CGRectMake(20 + (width - 40) / 3, 10, (width - 40)/ 3, height - 20);
    
    self.imageViewRight.frame = CGRectMake(30+ (width - 40)/ 3 * 2 , 10, (width - 40)/ 3, height - 20);

}









/** 当 cell 从 xib 文件进入时, 调用此方法. */


- (void)awakeFromNib {
    // Initialization code
    
}

/** 当点击 cell 时,调用此方法*/

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
