//
//  baseViewController.m
//  imjao
//
//  Created by zhang zhang on 16/7/4.
//  Copyright © 2016年 zhang zhang. All rights reserved.
//

#import "baseViewController.h"

@interface baseViewController ()<UIScrollViewDelegate>
@end

@implementation baseViewController
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    [super viewDidLoad];
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent animated:YES];
    [self.navigationController.navigationBar setBarTintColor:[UIColor redColor]];
    [self.navigationController.navigationBar setBackgroundColor:[UIColor redColor]];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor],NSFontAttributeName:[UIFont systemFontOfSize:21.0f]}];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
}
-(void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
    UIPanGestureRecognizer *pan = [scrollView panGestureRecognizer];
    CGFloat v = [pan velocityInView:scrollView].y;
    if (v<0) {
        [UIView animateWithDuration:0.3f animations:^{
            self.tabBarController.tabBar.frame = CGRectMake(0, self.view.frame.size.height + 16.0f, self.view.frame.size.width, 49.0f);
//            CGFloat h = self.navigationController.navigationBar.frame.origin.y;
//            if (h == -64) {
//                return ;
//            }else{
            self.navigationController.navigationBar.frame = CGRectMake(0.0f, -self.navigationController.navigationBar.frame.size.height, self.view.frame.size.width, self.navigationController.navigationBar.frame.size.height);
            
//            }
        }];
    }else{
        [UIView animateWithDuration:0.3f animations:^{
            self.tabBarController.tabBar.frame = CGRectMake(0.0f, self.view.frame.size.height - 49.0f, self.view.frame.size.width, 49.0f);
            CGFloat h = self.navigationController.navigationBar.frame.origin.y;
            if (h == 20) {
                return ;
            }else{
                self.navigationController.navigationBar.frame = CGRectMake(0, 20, self.view.frame.size.width, self.navigationController.navigationBar.frame.size.height);
            }
        }];
    }
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
