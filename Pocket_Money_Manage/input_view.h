//
//  input_view.h
//  Pocket_Money_Manage
//
//  Created by libertyfish on 2016/07/08.
//  Copyright (c) 2016年 libertyfish. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface input_view : UIViewController{
    NSString *year;
    NSString *month;
    NSString *day;
}
@property (weak, nonatomic) IBOutlet UITextField *genre;
@property (weak, nonatomic) IBOutlet UITextField *MyLabel_in;
@property (weak, nonatomic) IBOutlet UITextField *MyLabel_out;

@property (nonatomic) NSString* year;
@property (nonatomic) NSString* month;
@property (nonatomic) NSString* day;

@end
