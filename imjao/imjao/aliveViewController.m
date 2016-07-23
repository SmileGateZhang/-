//
//  aliveViewController.m
//  imjao
//
//  Created by zhang zhang on 16/7/4.
//  Copyright © 2016年 zhang zhang. All rights reserved.
//

#import "aliveViewController.h"

@interface aliveViewController ()

@end

@implementation aliveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configTitle];
    UIButton *b = [[UIButton alloc] initWithFrame:CGRectMake(0, 64, 200, 200)];
    b.backgroundColor = [UIColor redColor];
    [b addTarget:self action:@selector(haha) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:b];
    UIButton *bb = [[UIButton alloc] initWithFrame:CGRectMake(0, 200, 20, 20)];
    bb.backgroundColor = [UIColor blackColor];
    [bb addTarget:self action:@selector(hahaha) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:bb];
}
-(void)haha{
    NSLog(@"b");
}
-(void)hahaha{
    NSLog(@"bb");
}
-(void)configTitle{
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake((self.view.frame.size.width - 50)/2, 0, 50, 40)];
    label.text = @"直播";
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont systemFontOfSize:21.0f];
    label.textColor = [UIColor whiteColor];
    [self.navigationController.navigationBar addSubview:label];
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
