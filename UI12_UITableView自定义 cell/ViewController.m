//
//  ViewController.m
//  UI12_UITableView自定义 cell
//
//  Created by dllo on 15/12/28.
//  Copyright © 2015年 doll-61. All rights reserved.
//

#import "ViewController.h"

#import "CellOfContact.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, retain) UITableView *tableView;

@property (nonatomic, retain) NSMutableDictionary *dic;

@property (nonatomic, retain) NSMutableArray *arrKeys;

@property (nonatomic, retain) NSMutableArray *arr;



@end

@implementation ViewController


- (void)dealloc{

    [_tableView release];
    [_dic release];
    [_arrKeys release];
    [_arr release];
    [super dealloc];

}



- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self creatTableView];
    
    [self handleDate];
    
}

//数据

- (void)handleDate{

    self.arr = @[@"zhyangsan",@"lisi",@"wangwu"].mutableCopy;

}




- (void)creatTableView{
    
    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    [self.view addSubview:self.tableView];
    
    [_tableView release];
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
}


#pragma mark - UITableViewDataSource 协议方法(必须实现的)

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return  self.arr.count;

}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.row == 0) {
        
        /** 创建系统的 cell */
        
        static NSString *poll1 = @"reuse1";
        
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:poll1];
        
        if (cell == 0) {
            cell = [[[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:poll1] autorelease];
        }
        
        /** cell 的赋值*/
        
        cell.textLabel.text = @"这是系统的 cell";
        
        
        
        
        return cell;
        
    }else {
    
        /** 获取自定义的 cell.
         * 详见 cellOfContact .
         */
        
    
        
        static NSString *pool2 = @"reuse2";
        
        CellOfContact *cell = [tableView dequeueReusableCellWithIdentifier:pool2];
        
        if (cell == nil) {
            
            cell = [[[CellOfContact alloc] initWithStyle:0 reuseIdentifier:pool2] autorelease];
       
        }
    
    
    
        return cell;
    
    
    }
    

    
}


#pragma mark - TableView Delegate 协议方法 

/* 返回每行 row 的高度 */

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{

    return 100;


}









#pragma mark - 




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
