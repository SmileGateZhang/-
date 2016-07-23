//
//  LaunchViewController.m
//  imjao
//
//  Created by zhang zhang on 16/7/11.
//  Copyright © 2016年 zhang zhang. All rights reserved.
//

#import "LaunchViewController.h"

@interface LaunchViewController ()
@property (nonatomic,assign) NSTimer *time;
@end

@implementation LaunchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.count = 3;
    self.view.backgroundColor = [UIColor yellowColor];
    self.label = [[UILabel alloc] initWithFrame:CGRectMake(self.view.frame.size.width - 95, 5, 90, 35)];
    self.label.text = @"3s...";
    self.label.backgroundColor = [UIColor whiteColor];
    self.label.textColor = [UIColor blackColor];
    self.label. font = [UIFont systemFontOfSize:13.0f];
    self.label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:self.label];
    self.time = [NSTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(haha) userInfo:nil repeats:YES];
    [self.time fire];
}
-(void)haha{
    self.count--;
    [UIView animateWithDuration:1.0f animations:^{
        
//        dispatch_async(dispatch_get_main_queue(), ^{
            self.label.text = [NSString stringWithFormat:@"%lds...",(long)self.count];
//        });
    }];
    if (self.count == 0) {
        [self.time invalidate];
        [_delegate heheda];
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
