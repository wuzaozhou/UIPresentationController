//
//  UIViewController+KKExtension.h
//  UIPresentationController
//
//  Created by 吴灶洲 on 2018/3/3.
//  Copyright © 2018年 吴灶洲. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (KKExtension)<UIViewControllerTransitioningDelegate>
/** 控制器高度 */
@property (assign, nonatomic) CGFloat controllerHeight;

- (void)modal:(UIViewController *)vc controllerHeight:(CGFloat)controllerHeight;
@end
