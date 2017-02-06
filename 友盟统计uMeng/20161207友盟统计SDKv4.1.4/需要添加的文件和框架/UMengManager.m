//
//  UMengManager.m
//  uMengDemo
//
//  Created by apple on 17/2/6.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "UMengManager.h"

//友盟统计
#import "UMMobClick/MobClick.h"

@implementation UMengManager

/**
 友盟统计（channelId 友盟统计渠道：未发布测试使用"Web"  发布测试使用"" channelId为nil或@""时，默认会被当作@"App Store"渠道）（统计在模拟器和真机上均有效）
 
 @param appKey    友盟appKey
 @param channelId 友盟统计渠道：未发布测试使用"Web"  发布测试使用"App Store" （channelId 为nil或@""时,默认会被被当作@"App Store"渠道） channelId仅为字符标识，与具体发布渠道无关
                  某个设备渠道标识提交后不能更改。
 */
+  (void)uMengStartWithAppkey:(NSString *)appKey channelId:(NSString *)channelId {
//    [MobClick setAppVersion:XcodeAppVersion]; //参数为NSString * 类型,自定义app版本信息，如果不设置，默认从CFBundleVersion里取
    [MobClick setLogEnabled:YES];//设置是否打印SDK的log信息，默认为NO（不打印）
    UMConfigInstance.appKey = appKey;
    UMConfigInstance.secret = @"secretstringaldfkals";
    UMConfigInstance.channelId = channelId;
//    UMConfigInstance.eSType = E_UM_GAME;//游戏时使用
    [MobClick startWithConfigure:UMConfigInstance];
}

@end
