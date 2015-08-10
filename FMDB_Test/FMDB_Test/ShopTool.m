//
//  ShopTool.m
//  FMDB_Test
//
//  Created by 任子丰 on 15/8/6.
//  Copyright (c) 2015年 任子丰. All rights reserved.
//

#import "ShopTool.h"

@implementation ShopTool
static FMDatabase *_db;

+(void)initialize
{
    NSString *filePath = [NSSearchPathForDirectoriesInDomains(NSDocumentationDirectory, NSUserDomainMask, YES).lastObject stringByAppendingString:@"zf.sqlite"];
    _db = [FMDatabase databaseWithPath:filePath];
    [_db open];
    //创建表格
    [_db executeUpdate:@"CREATE TABLE IF NOT EXISTS zf_shop (id integer PRIMARY KEY,name text NOT NULL,price real)"];
}
+(void)addShops:(Shop *)shop
{
    [_db executeUpdateWithFormat:@"INSERT INTO zf_shop(name,price) VALUES (%@ ,%f);",shop.name,shop.price];
}
+ (NSArray *)shops
{
    FMResultSet *set = [_db executeQuery:@"SELECT *FROM zf_shop;"];
    NSMutableArray *dateArr = [NSMutableArray array];
    while (set.next) {
        Shop *shop = [[Shop alloc] init];
        shop.name = [set stringForColumn:@"name"];
        shop.price = [set doubleForColumn:@"price"];
        [dateArr addObject:shop];
    }
    return dateArr;
}
@end
