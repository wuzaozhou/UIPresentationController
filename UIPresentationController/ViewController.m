//
//  ViewController.m
//  UIPresentationController
//
//  Created by 吴灶洲 on 2018/3/3.
//  Copyright © 2018年 吴灶洲. All rights reserved.
//

#import "ViewController.h"
#import "TwoControllerView.h"
#import "UIViewController+KKExtension.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)onClick:(id)sender {
    TwoControllerView *vc = [[TwoControllerView alloc] init];
    [self modal:vc controllerHeight:500];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
