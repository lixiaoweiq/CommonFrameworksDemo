//
//  GlobalVariable.h
//  ProductDemo
//
//  Created by yixiaoshan on 15/9/17.
//  Copyright (c) 2015年 HYcompany. All rights reserved.
//

#ifndef ProductDemo_GlobalVariable_h
#define ProductDemo_GlobalVariable_h

/**
 *  主机头
 */
#define G_HTTP_URL  @"http://121.40.86.51:8012/"        //测试
//#define G_HTTP_URL  @"http://120.26.101.202:8001/"    //正式

/**
 *  后台接口
 */
#define G_SERVER_URL  [NSString stringWithFormat:@"%@%@",G_HTTP_URL,@"API/Interface.aspx?"]

/**
 *  接口返回成功状态参数
 */
#define G_REQUEST_STATUS  0

/**
 *  回调
 */

#define G_Notify_Url [NSString stringWithFormat:@"%@%@",G_HTTP_URL,@"alipay_app/notify_url.aspx"]

/**
 *  屏幕宽
 */
#define G_SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width

/**
 *  屏幕高
 */
#define G_SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

/**
 *  判断是否为IOS7以上的系统
 */
#define IOS7_OR_LATER (([UIDevice currentDevice].systemVersion.intValue) >= 7)

/**
 *  导航栏高度
 */
#define G_NAV_HEIGHT 64

/**
 *  颜色函数缩写
 */
#define RGBCOLOR(r,g,b)    [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:1]
#define RGBACOLOR(r,g,b,a) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:(a)]

/**
 *  用户是否登录
 */
//在每页显示时根据页面是否需要登录，判断是否登入，以及对应操作的抽象函数。
//self.bNeedLogin = YES;设置是否需要登录YES：需要，NO：不需要（默认为NO）
//判断是否登入依据[config objectForKey:G_IS_LOGIN]为@"YES"则调用已登录方法，否则调用未登录方法
//需重写的是否登录对应的事件
//- (void)hasLogInWithStatus:(int)status
//{
//    if (status == 0)
//    {
//        NSLog(@"=> 未登录");//未登录方法
//    }
//    else if (status == 1)
//    {
//        NSLog(@"=> 已登录");//已登录方法
//    }
//}
#define G_IS_LOGIN  @"gIsLogin"

/**
 *  用户ID
 */
#define G_USER_SHIPPERID @"gShipperID"

/**
 *  设备Token
 */
#define G_TOKEN @"gToken"

/**
 *  用户姓名
 */
#define G_USER_NAME @"gUserName"

/**
 *  用户手机号
 */
#define G_USER_PHONE @"gUserPhone"

/**
 *  用户经度
 */
#define G_USER_LONGITTUDE @"gUserlongitude"

/**
 *  用户维度
 */
#define G_USER_LATITUDE @"gUserlatitude"

/**
 *  手机设备唯一码
 */
#define G_DEVICE_UUID @"gDeviceUuid"


#endif
