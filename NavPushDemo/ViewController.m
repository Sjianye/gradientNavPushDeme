//
//  ViewController.m
//  NavPushDemo
//
//  Created by 改车吧 on 2016/12/22.
//  Copyright © 2016年 jianye. All rights reserved.
//

#import "ViewController.h"

#import "TwoViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *myTableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self setKeyScrollView:self.myTableView scrolOffsetY:200 options:HYHidenControlOptionLeft];

    
    [self.navigationController.navigationBar setTintColor:[UIColor whiteColor]];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor]}];
    
    self.navigationController.navigationBar.barTintColor = [UIColor yellowColor];


}

- (IBAction)pushBtn:(UIButton *)sender {
    TwoViewController *twoVC = [[TwoViewController alloc] init];
    
    [self.navigationController pushViewController:twoVC animated:YES];
    
}

- (NSInteger )numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
- (NSInteger )tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 20;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
    cell.textLabel.text = [NSString stringWithFormat:@"第%ld",indexPath.row];
    return cell;
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
