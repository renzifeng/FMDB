//
//  ShopTool.h
//  FMDB_Test
//
//  Created by 任子丰 on 15/8/6.
//  Copyright (c) 2015年 任子丰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Shop.h"
#import "FMDB.h"

@interface ShopTool : NSObject
+ (void)addShops:(Shop *)shop;
+ (NSArray *)shops;

@end
