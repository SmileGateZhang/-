//
//  tabBarViewController.m
//  imjao
//
//  Created by zhang zhang on 16/7/4.
//  Copyright © 2016年 zhang zhang. All rights reserved.
//

#import "tabBarViewController.h"
#import "attentionViewController.h"
#import "aliveViewController.h"
#import "newViewController.h"
@interface tabBarViewController ()

@end

@implementation tabBarViewController
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
//    [[UITabBar appearance] setShadowImage:[[UIImage alloc] init]];
    //建闯吃了个大屎
    //建闯吃了个大屎
    //建闯吃了个大屎//建闯吃了个大屎//建闯吃了个大屎
    //建闯吃了个大屎//建闯吃了个大屎

}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self config];
    [self configPic];
}
-(void)configPic{
    NSArray *imgArr = @[@"attention",@"alive",@"discover"];
    NSArray *selecImgArr = @[@"selectedAttention",@"alive",@"selectedDiscover"];
    for (int i= 0; i<self.viewControllers.count; i++) {
        
        if (i==1) {
            UIImageView *imageview = [[UIImageView alloc] initWithFrame:CGRectMake((self.view.frame.size.width - 49)/2, -3, 49, 49)];
            imageview.image = [UIImage imageNamed:imgArr[1]];
            [self.tabBar addSubview:imageview];
            UIButton *bt = [[UIButton alloc] initWithFrame:imageview.frame];
            [self.tabBar addSubview:bt];
            [bt addTarget:self action:@selector(bt) forControlEvents:UIControlEventTouchUpInside];
        }else{
            UITabBarItem *item = self.tabBar.items[i];
            [item setFinishedSelectedImage:[[UIImage imageNamed:selecImgArr[i]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] withFinishedUnselectedImage:[[UIImage imageNamed:imgArr[i]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
        }
    }
    [self.tabBar setBackgroundImage:[UIImage imageNamed:@"tabbarBG"]];
    [self.tabBar setShadowImage:[[UIImage alloc] init]];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor redColor],NSFontAttributeName:[UIFont systemFontOfSize:14]} forState:UIControlStateSelected];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:14],NSForegroundColorAttributeName:[UIColor grayColor]} forState:UIControlStateNormal];
}
-(void)bt{
    self.selectedIndex = 1;
    
}
-(void)config{
    attentionViewController *vc1 = [[attentionViewController alloc] init];
    vc1.title = @"关注";
    UINavigationController *nvc1 = [[UINavigationController alloc] initWithRootViewController:vc1];
    aliveViewController *vc2 = [[aliveViewController alloc] init];
    vc2.title = @"";
    UINavigationController *nvc2 = [[UINavigationController alloc] initWithRootViewController:vc2];
    newViewController *vc3 = [[newViewController alloc] init];
    vc3.title = @"发现";
    UINavigationController *nvc3 = [[UINavigationController alloc] initWithRootViewController:vc3];
    self.viewControllers = @[nvc1,nvc2,nvc3];
    
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
