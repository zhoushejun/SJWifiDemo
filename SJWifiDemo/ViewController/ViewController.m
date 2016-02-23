//
//  ViewController.m
//  SJWifiDemo
//
//  Created by shejun.zhou on 16/2/23.
//  Copyright © 2016年 shejun.zhou. All rights reserved.
//

#import "ViewController.h"
#import "SJWifiManager.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *resetWifiButton;
@property (nonatomic, strong) SJWifiManager *wifiManager;
@property (weak, nonatomic) IBOutlet UITextView *wifiNameTextView;
@property (weak, nonatomic) IBOutlet UITextView *ipAddressTextView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _wifiManager = [SJWifiManager sharedManager];
    if ([_wifiManager isWiFiEnabled]) {
        NSString *wifiName = [_wifiManager wifiName];
        self.wifiNameTextView.text = wifiName;
        
        NSString *ipAddress = [_wifiManager localIPAddress];
        self.ipAddressTextView.text = ipAddress;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tappedResetWifiButtonAction:(id)sender {
    NSLog(@"设置界面");
    
    /**
     参考博客：http://www.2cto.com/kf/201506/405779.html
     以下是内置的Settings的URL Scheme：
     
     About — prefs:root=General&path=About
     
     Accessibility — prefs:root=General&path=ACCESSIBILITY
     
     Airplane Mode On — prefs:root=AIRPLANE_MODE
     
     Auto-Lock — prefs:root=General&path=AUTOLOCK
     
     Brightness — prefs:root=Brightness
     
     Bluetooth — prefs:root=General&path=Bluetooth
     
     Date & Time — prefs:root=General&path=DATE_AND_TIME
     
     FaceTime — prefs:root=FACETIME
     
     General — prefs:root=General
     
     Keyboard — prefs:root=General&path=Keyboard
     
     iCloud — prefs:root=CASTLE
     
     iCloud Storage & Backup — prefs:root=CASTLE&path=STORAGE_AND_BACKUP
     
     International — prefs:root=General&path=INTERNATIONAL
     
     Location Services — prefs:root=LOCATION_SERVICES
     
     Music — prefs:root=MUSIC
     
     Music Equalizer — prefs:root=MUSIC&path=EQ
     
     Music Volume Limit — prefs:root=MUSIC&path=VolumeLimit
     
     Network — prefs:root=General&path=Network
     
     Nike + iPod — prefs:root=NIKE_PLUS_IPOD
     
     Notes — prefs:root=NOTES
     
     Notification — prefs:root=NOTIFICATIONS_ID
     
     Phone — prefs:root=Phone
     
     Photos — prefs:root=Photos
     
     Profile — prefs:root=General&path=ManagedConfigurationList
     
     Reset — prefs:root=General&path=Reset
     
     Safari — prefs:root=Safari
     
     Siri — prefs:root=General&path=Assistant
     
     Sounds — prefs:root=Sounds
     
     Software Update — prefs:root=General&path=SOFTWARE_UPDATE_LINK
     
     Store — prefs:root=STORE
     
     Twitter — prefs:root=TWITTER
     
     Usage — prefs:root=General&path=USAGE
     
     VPN — prefs:root=General&path=Network/VPN
     
     Wallpaper — prefs:root=Wallpaper
     
     Wi-Fi — prefs:root=WIFI
     
     */
    
//    NSURL *url = [NSURL URLWithString:UIApplicationOpenSettingsURLString];
    NSURL *url = [NSURL URLWithString:@"prefs:root=WIFI"];

    if ([[UIApplication sharedApplication] canOpenURL:url]) {
        [[UIApplication sharedApplication] openURL:url];
    }
}

@end
