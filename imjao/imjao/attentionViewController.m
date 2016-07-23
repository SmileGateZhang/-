//
//  attentionViewController.m
//  imjao
//
//  Created by zhang zhang on 16/7/4.
//  Copyright © 2016年 zhang zhang. All rights reserved.
//

#import "attentionViewController.h"
#import "SDCycleScrollView.h"
#import "attentionTableViewCell.h"
#import "hahaTableViewCell.h"
#define MJ_W self.view.frame.size.width
#define MJ_H self.view.frame.size.height

@interface attentionViewController ()<UITableViewDelegate,UITableViewDataSource,SDCycleScrollViewDelegate,UINavigationControllerDelegate>
@property (nonatomic ,strong) UITableView *tb;
@property (nonatomic ,strong) NSMutableArray *urlArr;
@end

@implementation attentionViewController
#pragma mark - lazyLoad
-(NSMutableArray *)urlArr{
    if (!_urlArr) {
        _urlArr = [[NSMutableArray alloc] init];
    }
    return _urlArr;
}
-(UITableView *)tb{
    if (!_tb) {
        _tb = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, MJ_W , MJ_H )style:UITableViewStyleGrouped];
        _tb.backgroundColor = [UIColor whiteColor];
        _tb.dataSource = self;
        _tb.delegate = self;
        _tb.rowHeight = 220.0f;
        _tb.estimatedRowHeight = UITableViewAutomaticDimension;
        _tb.backgroundColor = [UIColor whiteColor];
        _tb.tableHeaderView = [self scrollView];
    }
    return _tb;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.tb];
}
#pragma mark - 轮播图
-(UIView *)scrollView{
    UIView *v = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 220.0f)];
    SDCycleScrollView *sc = [SDCycleScrollView cycleScrollViewWithFrame:v.frame delegate:self placeholderImage:nil];
    sc.imageURLStringsGroup = self.urlArr;
    sc.showPageControl = YES;
    sc.backgroundColor = [UIColor blackColor];
    [v addSubview:sc];
    return v;
}
#pragma mark - tableViewDelegate
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 0) {
        attentionTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"attentionID"];
        if (cell==nil) {
             cell = [[[NSBundle mainBundle] loadNibNamed:@"attentionTableViewCell" owner:self options:nil]lastObject];
        }
        cell.backgroundColor = [UIColor redColor];
        return cell;
    }else{
        hahaTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"hahaID"];
        if (cell==nil) {
            cell = [[[NSBundle mainBundle] loadNibNamed:@"hahaTableViewCell" owner:self options:nil]lastObject];
        }
        cell.backgroundColor = [UIColor blueColor];
        return cell;
    }
    return nil;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 0) {
        return 400.0f;
    }else{
        return 200.0f;
    }
    
//    return 0;
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
