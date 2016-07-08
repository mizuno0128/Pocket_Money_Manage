//
//  Devise_Size.m
//  Pocket_Money_Manage
//
//  Created by libertyfish on 2016/07/08.
//  Copyright (c) 2016年 libertyfish. All rights reserved.
//

#import "Devise_Size.h"

@implementation Devise_Size

int deviceBoundsHeight;
int deviceBoundsWidth;

//現在起動中のデバイス名の取得メソッド
+ (NSString *)getNowDisplayDevice
{
    deviceBoundsWidth = [[UIScreen mainScreen] bounds].size.width;
    deviceBoundsHeight = [[UIScreen mainScreen] bounds].size.height;
    
    NSString *deviceType = [NSString new];
    
    //iPhone4s
    if(deviceBoundsWidth == 320 && deviceBoundsHeight == 480){
        
        deviceType = @"iPhone4s";
        
        //iPhone5またはiPhone5s
    }else if (deviceBoundsWidth == 320 && deviceBoundsHeight == 568){
        
        deviceType = @"iPhone5";
        
        //iPhone6
    }else if (deviceBoundsWidth == 375 && deviceBoundsHeight == 667){
        
        deviceType = @"iPhone6";
        
        //iPhone6plus
    }else if (deviceBoundsWidth == 414 && deviceBoundsHeight == 736){
        
        deviceType = @"iPhone6plus";
        
    }
    return deviceType;
}

@end
