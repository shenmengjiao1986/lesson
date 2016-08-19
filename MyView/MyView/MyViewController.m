//
//  MyViewController.m
//  MyView
//
//  Created by joyceshen on 8/19/16.
//  Copyright © 2016 joyceshen. All rights reserved.
//

#import "MyViewController.h"
#import "UIView+Layout.h"
@interface MyViewController ()
@property (strong, nonatomic) UIView *viewForDynamic;
@property (assign, nonatomic) CGFloat topOfViewForDynamic;
@property (assign, nonatomic) CGFloat marginOfViewForDynamic;
@property (assign, nonatomic) CGFloat heightOfViewForDynamic;
@property (weak, nonatomic) IBOutlet UIView *viewForStatic;

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initParams];
//    self.viewForDynamic = [[UIView alloc] initWithFrame:CGRectMake(10, 10, 200, 100)];
//    self.viewForDynamic.backgroundColor = [UIColor redColor];
//    [self.view addSubview:self.viewForDynamic];
    
    //初始化参数
    self.viewForDynamic = [UIView new];
    self.viewForDynamic.backgroundColor = [UIColor redColor];
    self.viewForDynamic.autoresizingMask = UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleWidth;
    self.viewForDynamic.left = self.marginOfViewForDynamic;
    self.viewForDynamic.width = self.view.width - 2 * self.marginOfViewForDynamic;
    self.viewForDynamic.top = self.topOfViewForDynamic;
    self.viewForDynamic.height = self.heightOfViewForDynamic;
    [self.view addSubview:self.viewForDynamic];
    
    //self.viewForStatic.backgroundColor = [UIColor blueColor];//!!!
    // Do any additional setup after loading the view from its nib.
}

- (void)initParams
{
    self.topOfViewForDynamic = 10;
    self.heightOfViewForDynamic = 100;
    self.marginOfViewForDynamic = 10;
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
