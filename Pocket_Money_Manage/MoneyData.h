//
//  MoneyData.h
//  Pocket_Money_Manage
//
//  Created by libertyfish on 2016/07/08.
//  Copyright (c) 2016年 libertyfish. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface MoneyData : NSManagedObject

@property (nonatomic, retain) NSNumber * in_money;
@property (nonatomic, retain) NSNumber * out_money;
@property (nonatomic, retain) NSString * genre;
@property (nonatomic, retain) NSNumber * day;
@property (nonatomic, retain) NSNumber * month;
@property (nonatomic, retain) NSNumber * year;

@end
