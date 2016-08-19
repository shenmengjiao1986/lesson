//
//  ViewController.m
//  TypeTransfer
//
//  Created by joyceshen on 8/17/16.
//  Copyright © 2016 joyceshen. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()
@property (strong, nonatomic)NSString *str;
@property (assign, nonatomic)NSInteger integerData;
@property (assign, nonatomic)CGFloat floatData;

@property (strong, nonatomic)NSArray *arr;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.integerData = 10;
    self.floatData = 20.76f;
    
    NSLog(@"%@", @(self.floatData));
    //NSInteger 转 NSString
    self.str = [NSString stringWithFormat:@"%@", @(self.integerData)];
    NSLog(@"%@", self.str);
    
    //NSString 转 NSINteger
    self.integerData = 20;
    self.integerData = [self.str integerValue];
    NSLog(@"%@", @(self.integerData));
    
    //CGFloat 转 NSString
    self.str = [NSString stringWithFormat:@"%@", @(self.floatData)];
    NSLog(@"%@", self.str);
    
    //NSString 转 CGFloat
    self.floatData = 40.333;
    self.floatData = [self.str floatValue];
    NSLog(@"%@", @(self.floatData));
    
    //CGFloat 转 NSInteger
    NSNumber *number = [NSNumber numberWithFloat:self.floatData];
    self.integerData = [number integerValue];
    NSLog(@"%@", @(self.integerData));
    
    //NSIntger 转 CGFloat
    self.integerData = 100;
    NSNumber *number2 = [NSNumber numberWithInteger:self.integerData];
    self.floatData = [number2 floatValue];
    NSLog(@"%@", @(self.floatData));
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
