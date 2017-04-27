//
//  MyOrdersViewController.m
//  BHRS
//
//  Created by song heng on 2017/4/26.
//  Copyright © 2017年 王力. All rights reserved.
//

#import "MyOrdersViewController.h"
#import "MyOrderTableViewCell.h"
#import "OrderModel.h"

static NSString * const cellIdentifier = @"MyOrderTableViewCell";
//
@interface MyOrdersViewController ()<UITableViewDelegate,UITableViewDataSource>{
  UITableView *DataTable;
  NSMutableArray *InternetArray;
  NSMutableArray *dataArray; //定义数据数组
}
@end

@implementation MyOrdersViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  self.navigationController.navigationBar.hidden = NO;
  self.view.backgroundColor = [UIColor colorWithRed:245.0 green:245.0 blue:245.0 alpha:1];
    // Do any additional setup after loading the view.
  [self initWithUI];
}
- (void)viewWillAppear:(BOOL)animated{
  self.navigationController.navigationBar.hidden = NO;
  self.tabBarController.tabBar.hidden = YES;
}
- (void)initWithUI{
  NSArray *array = [NSArray arrayWithObjects:@"已完成",@"未完成",@"已失效",nil];
  int width = (self.view.bounds.size.width-3)/3;
  for (int i = 0; i< 3; i ++) {
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor = [UIColor whiteColor];
    [btn setTitle:array[i] forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor orangeColor] forState:UIControlStateSelected];
    [btn setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    btn.frame = CGRectMake(i*width + i*1, 64, width, 60);
    btn.tag = 1000+i;
    [btn addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    UIView *orangeView = [[UIView alloc] initWithFrame:CGRectMake(0, btn.bounds.size.height-5, btn.bounds.size.width, 5)];
    orangeView.backgroundColor = [UIColor whiteColor];
    orangeView.tag = 2000+i;
    [btn addSubview:orangeView];
  }
 
   DataTable = [[UITableView alloc] initWithFrame:CGRectMake(0, 124, self.view.bounds.size.width  , self.view.bounds.size.height - 104)];//指定位置大小
  
  [DataTable setDelegate:self];//指定委托
  
  [DataTable setDataSource:self];//指定数据委托
  
  [self.view addSubview:DataTable];//加载tableview
  
  [DataTable registerClass:[MyOrderTableViewCell class] forCellReuseIdentifier:cellIdentifier];
   DataTable.tableFooterView = [[UIView alloc] init];
  InternetArray = [NSMutableArray array];
  dataArray = [NSMutableArray array];
  UIButton *button = (UIButton *)[self.view viewWithTag:1000];
  [self btnClicked:button];
}
- (void)requeseInfoFromSever:(NSString *)str{
  for (int i = 0; i<2; i++) {
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    [dict setValue:@"加载中..." forKey:@"policyNum"];
    [dict setValue:@"健康重大疾病保险>" forKey:@"policyName"];
    [dict setValue:@"加载中..." forKey:@"creatTime"];
    [dict setValue:@"加载中..." forKey:@"summoney"];
    [InternetArray addObject:dict];
  }
  for (NSDictionary *dict in InternetArray) {
    OrderModel *model = [[OrderModel alloc] init];
    model.policyNum = dict[@"policyNum"];
    model.policyName = dict[@"policyName"];
    model.creatTime = dict[@"creatTime"];
    model.sumMoney = dict[@"summoney"];
    [dataArray addObject:model];
  }
  [DataTable reloadData];
}

- (void)btnClicked:(UIButton *)btn{
  UIView *slabel = (UIView *)[self.view viewWithTag:btn.tag + 1000];
  [slabel setBackgroundColor:[UIColor orangeColor]];
  InternetArray = [NSMutableArray array];
  dataArray = [NSMutableArray array];
  if (btn.tag == 1000) {
    btn.selected = YES;
    [self requeseInfoFromSever:nil];
  }else if (btn.tag == 1001) {
    btn.selected = YES;
    [self requeseInfoFromSever:nil];
  }else if (btn.tag == 1002) {
    btn.selected = YES;
    [self requeseInfoFromSever:nil];
  }
  for (int i=1000; i<1003; i++) {
    if (btn.tag != i) {
      UILabel *slabel = (UILabel *)[self.view viewWithTag:i + 1000];
      [slabel setBackgroundColor:[UIColor whiteColor]];

      UIButton *button = (UIButton *)[self.view viewWithTag:i];
      button.selected = NO;
//      button.userInteractionEnabled = YES;
    }else{
      
      
    }
  }
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
  return dataArray.count;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
  return 1;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
  return 160;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
//  MyOrderTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
//  MyOrderTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
//  if (cell == nil) {
    //通过xib的名称加载自定义的cell
    MyOrderTableViewCell *cell = [[[NSBundle mainBundle] loadNibNamed:@"MyOrderTableViewCell" owner:self options:nil] lastObject];
  // 禁止cell点击事件
  cell.selectionStyle = UITableViewCellSelectionStyleNone;
//    cell = [[MyOrderTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
//  }
  OrderModel *orderModel = [dataArray objectAtIndex:indexPath.row];
  [cell updateCellWithOrderModel:orderModel];
//  cell.orderName.text = orderModel.policyNum;
//  cell.policyName.text = orderModel.policyName;
//  cell.creatTime.text = [NSString stringWithFormat:@"创建日期:%@",orderModel.creatTime];
//  cell.sumMoney.text = [NSString stringWithFormat:@"金额:%@",orderModel.sumMoney];
  return cell;
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
