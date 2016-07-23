//
//  LaunchViewController.h
//  imjao
//
//  Created by zhang zhang on 16/7/11.
//  Copyright © 2016年 zhang zhang. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol haha <NSObject>

-(void)heheda;

@end


@interface LaunchViewController : UIViewController
@property (nonatomic,strong) UILabel *label;
@property (nonatomic,assign) NSInteger count;
@property(nonatomic,assign) id<haha> delegate;
@end
