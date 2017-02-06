//
//  HomePageVC.m
//  ProductDemo
//
//  Created by yixiaoshan on 15/9/21.
//  Copyright (c) 2015年 HYcompany. All rights reserved.
//

#import "HomePageVC.h"

@interface HomePageVC ()

@end

@implementation HomePageVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.bNeedLogin = YES;//设置是否需要登录
    self.cBtnLeft.hidden = YES;//隐藏返回按钮
    self.cSuperTitle = @"首页";//设置导航栏标题
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
