//
//  XPNavigationController.m
//  ZhiFuBao
//
//  Created by dragon on 16/7/3.
//  Copyright © 2016年 win. All rights reserved.
//

#import "XPNavigationController.h"

@interface XPNavigationController ()

@end

@implementation XPNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.navigationBar setBackgroundImage:[UIImage imageNamed:@"navigationbar7"] forBarMetrics:UIBarMetricsDefault];
    
    //设置导航栏字体大小、颜色
    self.navigationBar.titleTextAttributes = @{NSFontAttributeName:[UIFont systemFontOfSize:18],
        NSForegroundColorAttributeName:[UIColor whiteColor]
        };
}

@end
