//
//  UIViewController+KKExtension.m
//  UIPresentationController
//
//  Created by 吴灶洲 on 2018/3/3.
//  Copyright © 2018年 吴灶洲. All rights reserved.
//

#import "UIViewController+KKExtension.h"
#import "KKPresentBottom.h"
#import <objc/runtime.h>

@implementation UIViewController (KKExtension)

- (void)setControllerHeight:(CGFloat)controllerHeight {
    objc_setAssociatedObject(self, @"height", @(controllerHeight), OBJC_ASSOCIATION_ASSIGN);
}

- (CGFloat)controllerHeight {
    return [objc_getAssociatedObject(self, @"height") floatValue];
}


- (UIPresentationController *)presentationControllerForPresentedViewController:(UIViewController *)presented presentingViewController:(UIViewController *)presenting sourceViewController:(UIViewController *)source {
    return [[KKPresentBottom alloc] initWithPresentedViewController:presented presentingViewController:presenting];
}

- (void)modal:(UIViewController *)vc controllerHeight:(CGFloat)controllerHeight {
    vc.modalPresentationStyle = UIModalPresentationCustom;
    vc.controllerHeight = controllerHeight;
    vc.transitioningDelegate = self;
    [self presentViewController:vc animated:YES completion:nil];
}

@end
