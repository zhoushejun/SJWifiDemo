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

/**
 @method    isWiFiEnabled
 @abstract  判断 wifi 是否开启
 @return    YES/NO
 */
- (BOOL)isWiFiEnabled;

/**
 @method    wifiName
 @abstract  获取连接的 wifi 名称
 @return    连接的 wifi 名称
 */
- (NSString *)wifiName;

/**
 @method    localIPAddress
 @abstract  获取连接上 wifi 的当前 ip地址
 @return    本地 ip 地址
 */
- (NSString *)localIPAddress;

@end
