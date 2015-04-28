//
//  ViewController.m
//  UIViewExtension
//
//  Created by huangyibiao on 15/4/15.
//  Copyright (c) 2015年 huangyibiao. All rights reserved.
//

#import "ViewController.h"
#import "UIView+HYBExtension.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  
  UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 100, 320, 100)];
  [view addLineWithTop:10 left:10];
  [view addLineWithTop:20 left:10 color:[UIColor redColor]];
  [view addLineWithTop:30 left:10 color:[UIColor blackColor] lineHeight:5.0];
  [view addLineWithTop:40 left:10 lineHeight:10.0];
  
  [view addLineWithTop:70 left:30 right:30];
  [self.view addSubview:view];
  view.backgroundColor = [UIColor greenColor];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
