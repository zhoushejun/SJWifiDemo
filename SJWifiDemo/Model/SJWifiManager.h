//
//  SJWifiManager.h
//  SJWifiDemo
//
//  Created by shejun.zhou on 16/2/23.
//  Copyright © 2016年 shejun.zhou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SJWifiManager : NSObject

+ (SJWifiManager *)sharedManager;
- (BOOL)isWiFiEnabled;
- (NSString *)wifiName;
- (NSString *)localIPAddress;

@end
