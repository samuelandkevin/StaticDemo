//
//  ViewController3.m
//  StaticDemo
//
//  Created by kunpeng on 2019/7/12.
//  Copyright © 2019 samuelandkevin. All rights reserved.
//

#import "ViewController3.h"

static NSInteger age;

//如果直接这样声明：NSInteger age; 如果在其他文件也这样声明：NSInteger age; 然后编译会报错。

@interface ViewController3 ()

@end

@implementation ViewController3

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    self.title = @"static全局变量使用";
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    NSLog(@"age = %ld", (long)age);
    
    age += 10;
    NSLog(@"age = %ld", (long)age);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - Life Cycle
-(void)dealloc{
    NSLog(@"ViewController3 is dealloc");
}

@end
