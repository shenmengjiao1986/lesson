//
//  ViewController.m
//  NSLog
//
//  Created by joyceshen on 8/15/16.
//  Copyright © 2016 joyceshen. All rights reserved.
//

#import "ViewController.h"
#import "NVUtils.h"
@interface ViewController ()
@property (assign, nonatomic)NSInteger integerData;
@property (assign, nonatomic)CGFloat floatData;
@property (strong, nonatomic)NSString *str;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.integerData = 10;
    self.floatData = 20.0;
    self.str = @"abc";
    NSLog(@"%@",@(self.integerData));
    NSLog(@"%@",@(self.floatData));
    NSLog(@"%@",null2empty(self.str));
    self.integerData ++ ;
    NSLog(@"%@",@(self.integerData));
    NSLog(@"%@", @(self.str.length ));
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
