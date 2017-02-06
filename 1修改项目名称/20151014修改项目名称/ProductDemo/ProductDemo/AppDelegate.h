//
//  AppDelegate.h
//  ProductDemo
//
//  Created by yixiaoshan on 15/9/17.
//  Copyright (c) 2015年 HYcompany. All rights reserved.
//

//
//框架文件结构说明：
//Frameworks        xcode自带框架
//OtherFrameworks   其他框架
//HYCOM             公司整理的调用方法（需要自行导入）（不可改动）
//OtherCOM          其他调用方法
//ProductDemo       编写代码
//  BaseVC          基类
//    BaseVC          基类（不可改动）
//    BaseExtendVC    扩展基类（根据项目设置内容和添加控件）
//新建文件继承BaseExtendVC
//PublicHeaders.pch 公共头文件
//GlobalVariable.h  缓存变量和宏定义
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;


@end

