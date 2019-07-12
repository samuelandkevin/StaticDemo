//
//  ViewController.m
//  StaticDemo
//
//  Created by kunpeng on 2019/7/12.
//  Copyright © 2019 samuelandkevin. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //在appDelegate中定义了一个全局变量（NSInteger phoneNum = 123456789;）
    extern NSInteger phoneNum;
    NSLog(@"在appDelegate中定义了一个全局变量 NSInteger phoneNum = %ld",(long)phoneNum);
    
    //然后在ViewController中使用并修改这个全局变量
    phoneNum = 54321;
    NSLog(@"然后在ViewController中使用并修改这个全局变量phoneNum,phoneNum = %ld",(long)phoneNum);
    
    
    self.title = @"extern访问全局变量";
    
    self.view.backgroundColor = [UIColor whiteColor];
}

- (IBAction)pushVC:(id)sender {
    [self.navigationController pushViewController:[ViewController2 new] animated:YES];
}

@end
