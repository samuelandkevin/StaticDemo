//
//  ViewController2.m
//  StaticDemo
//
//  Created by kunpeng on 2019/7/12.
//  Copyright © 2019 samuelandkevin. All rights reserved.
//

#import "ViewController2.h"
#import "ViewController3.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(10, 100, 100, 44)];
    btn.backgroundColor = [UIColor redColor];
    [btn setTitle:@"pushVC" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(pushVC:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    self.title = @"static局部静态变量使用";
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self test];
}

- (void)pushVC:(id)sender{
    [self.navigationController pushViewController:[ViewController3 new] animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    NSLog(@"---------- viewWillAppear -------------");
    [self test];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    NSLog(@"---------- viewDidAppear -------------");
    [self test];
}

- (void)test {
    NSInteger i = 0;
    i++;
    
    static NSInteger staticValue = 0;//局部静态变量
    staticValue++;
    
    NSLog(@"i = %ld, s.value = %ld", (long)i, (long)staticValue);
}

#pragma mark - Life Cycle
-(void)dealloc{
    NSLog(@"ViewController2 is dealloc");
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
