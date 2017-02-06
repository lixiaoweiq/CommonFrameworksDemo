//
//  BaseVC.m
//  ShoeCity
//
//  Created by Bibo on 15/5/10.
//  Copyright (c) 2015年 Bibo. All rights reserved.
//

#import "BaseVC.h"
//#import "Reachability.h"

@interface BaseVC ()

@end

@implementation BaseVC

- (void)viewDidLoad
{
    //导航栏状态栏的字体颜色为白色
    if (IOS7_OR_LATER) // 判断是否是IOS7或以上
    {
        [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent animated:NO];
    }
    
    self.navigationController.navigationBarHidden = YES;
    
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self initNavView];
}

- (void)viewWillAppear:(BOOL)animated
{
    if (_bNeedLogin)//需要登录
    {
        NSUserDefaults *config = [NSUserDefaults standardUserDefaults];
        
        //判断是否登录
        NSString *strIsLogIn = [config objectForKey:G_IS_LOGIN];
        if ([strIsLogIn isEqualToString:@"YES"])
        {
            [self hasLogInWithStatus:1];
        }
        else
        {
            [self hasLogInWithStatus:0];
        }
    }    
    
//    //判断是否有网络
//    Reachability *reachability = [Reachability reachabilityWithHostName:@"www.baidu.com"];
//    switch ([reachability currentReachabilityStatus])
//    {
//        case NotReachable: //没有网络连接
//        {
//            [self hasNetworkWithStatus:0];
//            break;
//        }
//        case ReachableViaWWAN: //使用3G网络
//        {
//            [self hasNetworkWithStatus:1];
//            break;
//        }
//        case ReachableViaWiFi: //使用WiFi网络
//        {
//            [self hasNetworkWithStatus:2];
//            break;
//        }
//        default:
//            break;
//    }
}

- (void)initNavView
{
    //导航栏
    _cViewNav                 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 64)];
    _cViewNav.userInteractionEnabled = YES;
    _cViewNav.backgroundColor = RGBCOLOR(171, 95, 207);
    [self.view addSubview:_cViewNav];
    
    //标题
    _lblTitle               = [[UILabel alloc] initWithFrame:CGRectMake(60, 24, [UIScreen mainScreen].bounds.size.width-120, 30)];
    _lblTitle.textAlignment = NSTextAlignmentCenter;
    _lblTitle.font          = [UIFont boldSystemFontOfSize:20];
    _lblTitle.textColor     = [UIColor whiteColor];
    [_cViewNav addSubview:_lblTitle];
    
    //左按钮
    _cBtnLeft = [[UIButton alloc] initWithFrame:CGRectMake(0, 35/2.0f, 60, 44)];
    [_cBtnLeft setBackgroundImage:[UIImage imageNamed:@"nav_back"] forState:UIControlStateNormal];
    [_cBtnLeft addTarget:self action:@selector(navLeftPressed) forControlEvents:UIControlEventTouchUpInside];
    [_cViewNav addSubview:_cBtnLeft];
    
    //右按钮
    _cBtnRight = [[UIButton alloc] initWithFrame:CGRectMake(G_SCREEN_WIDTH - 60, 35/2.0f, 60, 44)];
    [_cBtnRight addTarget:self action:@selector(navRightPressed:) forControlEvents:UIControlEventTouchUpInside];
    [_cViewNav addSubview:_cBtnRight];
}


/**
 *  重写Title
 *
 *  @param cSuperTitle
 */
- (void)setCSuperTitle:(NSString *)cSuperTitle
{
    if (cSuperTitle.length > 0)
    {
        _lblTitle.text = cSuperTitle;
    }
}

/**
 *  导航左按钮事件（默认返回上一页）
 *
 */
- (void)navLeftPressed
{
    [self.navigationController popViewControllerAnimated:YES];
}

/**
 *  导航右按钮事件（默认无内容）
 *
 */
- (void)navRightPressed:(id)sender
{
    NSLog(@"=> navRightPressed !");
}

/**
 *  是否登录对应的事件（默认无内容）
 *  @param status 0：未登录，1：已登录
 */
- (void)hasLogInWithStatus:(int)status
{
    if (status == 0)
    {
        NSLog(@"=> 未登录");
    }
    else if (status == 1)
    {
        NSLog(@"=> 已登录");
    }
}

/**
 *  是否有网对应的事件（默认无内容）
 *
 *  @param status 0：无网络，1：3G网络，2：WiFi网络
 */
- (void)hasNetworkWithStatus:(int)status
{
    if (status == 0)
    {
         NSLog(@"=> hasNotNetwork");
    }
    else if (status == 1)
    {
         NSLog(@"=> has3GNetwork");
    }
    else if (status == 2)
    {
        NSLog(@"=> hasWiFiNetwork");
    }
   
}
///
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
