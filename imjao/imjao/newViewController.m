//ssssssaaqwezxc
//  newViewController.m
//  imjao
//
//  Created by zhang zhang on 16/7/5.
//  Copyright © 2016年 zhang zhang. All rights reserved.
//

#import "newViewController.h"
#import "UIView+SDAutoLayout.h"
#import "Masonry.h"
@interface newViewController ()

@end

@implementation newViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGPoint point = CGPointMake(100, 100);
    CGFloat r = 80.0f;
    CGFloat s = M_PI_2;
    CGFloat e = -M_PI_2;
    
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:point radius:r startAngle:s endAngle:e clockwise:YES];
    UIColor *c = [UIColor blueColor];
    [c set];
    [path fill];
    path.lineWidth = 2.0f;
    [path stroke];
    UIButton *butn = [[UIButton alloc] init];
    butn.sd_layout.yIs(0).xIs(0).heightIs(100).widthIs(CGRectGetWidth(self.view.frame));
    butn.backgroundColor = [UIColor redColor];
    [self.view addSubview:butn];
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
