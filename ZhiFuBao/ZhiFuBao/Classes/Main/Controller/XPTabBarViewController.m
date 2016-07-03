//
//  XPTabBarViewController.m
//  ZhiFuBao
//
//  Created by dragon on 16/7/3.
//  Copyright © 2016年 win. All rights reserved.
//

#import "XPTabBarViewController.h"
#import "XPPayViewController.h"
#import "XPDiscoverTableViewController.h"
#import "XPServeTableViewController.h"
#import "XPTreasureTableViewController.h"

@interface XPTabBarViewController ()

@end

@implementation XPTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    // 添加子控制器
    [self addAllChildViewController];
}

#pragma mark -添加子控制器
- (void)addAllChildViewController
{
    XPPayViewController *pay = [XPPayViewController new];
    [self addOneChildViewController:pay image:[UIImage imageNamed:@"TabBar_HomeBar"] selImage:[UIImage imageNamed:@"TabBar_HomeBar_Sel"] withTitle:@"支付宝"];
    
    XPServeTableViewController *serve = [XPServeTableViewController new];
    [self addOneChildViewController:serve image:[UIImage imageNamed:@"TabBar_PublicService"] selImage:[UIImage imageNamed:@"TabBar_PublicService_Sel"] withTitle:@"服务窗"];
    
    XPDiscoverTableViewController *discover = [XPDiscoverTableViewController new];
    [self addOneChildViewController:discover image:[UIImage imageNamed:@"TabBar_Discovery"] selImage:[UIImage imageNamed:@"TabBar_Discovery_Sel"] withTitle:@"发现"];
    
    XPTreasureTableViewController *treasure = [XPTreasureTableViewController new];
    [self addOneChildViewController:treasure image:[UIImage imageNamed:@"TabBar_Assets"] selImage:[UIImage imageNamed:@"TabBar_Assets_Sel"] withTitle:@"财富"];
}

#pragma mark -添加一个子控制器
- (void)addOneChildViewController:(UIViewController *)vc image:(UIImage *)image selImage:(UIImage *)selImage withTitle:(NSString *)title
{
    vc.navigationItem.title = title;
    
    vc.tabBarItem.image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    //设置图片不被渲染
    UIImage *originalImage = [selImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc.tabBarItem.selectedImage = originalImage;
    vc.title = title;
    [self addChildViewController:vc];
}

@end
