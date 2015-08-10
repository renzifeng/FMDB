//
//  ViewController.m
//  FMDB_Test
//
//  Created by 任子丰 on 15/8/6.
//  Copyright (c) 2015年 任子丰. All rights reserved.
//

#import "ViewController.h"
#import "ShopTool.h"
#import "Shop.h"

@interface ViewController ()
@property (nonatomic, strong) FMDatabase *db;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //插入数据,打开此处运行就会插入100条数据
//    for (int i = 0; i < 100; i++) {
//        Shop *shop = [[Shop alloc] init];
//        shop.name = [NSString stringWithFormat:@"手机%d",i];
//        shop.price = arc4random()%1000;
//        [ShopTool addShops:shop];
//    }
    
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    //点击空白处查询数据库数据
    NSArray *arr = [ShopTool shops];
    for (Shop *shop in arr) {
        NSLog(@"NAME = %@,PRICE = %f",shop.name,shop.price);
    }
}

@end
