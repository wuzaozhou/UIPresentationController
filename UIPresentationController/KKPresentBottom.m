//
//  KKPresentBottom.m
//  UIPresentationController
//
//  Created by 吴灶洲 on 2018/3/3.
//  Copyright © 2018年 吴灶洲. All rights reserved.
//

#import "KKPresentBottom.h"
#import "UIViewController+KKExtension.h"

@interface KKPresentBottom()
@property (strong, nonatomic) UIView *blackView;
@end

@implementation KKPresentBottom

- (instancetype)initWithPresentedViewController:(UIViewController *)presentedViewController presentingViewController:(UIViewController *)presentingViewController {
    if (self = [super initWithPresentedViewController:presentedViewController presentingViewController:presentingViewController]) {
        _controllerHeight = presentedViewController.controllerHeight == 0 ? [UIScreen mainScreen].bounds.size.height : presentedViewController.controllerHeight;
    }
    return self;
}

- (void)presentationTransitionWillBegin {
    [super presentationTransitionWillBegin];
    self.blackView.alpha = 0;
    [self.containerView addSubview:self.blackView];
    [UIView animateWithDuration:1.0 animations:^{
        self.blackView.alpha = 1;
    }];
}

- (void)dismissalTransitionWillBegin {
    [super dismissalTransitionWillBegin];
    [UIView animateWithDuration:1.0 animations:^{
        self.blackView.alpha = 0;
    }];
}

- (void)dismissalTransitionDidEnd:(BOOL)completed {
    [super dismissalTransitionDidEnd:completed];
    if (completed) {
        [self.blackView removeFromSuperview];
    }
}


- (CGRect)frameOfPresentedViewInContainerView {
    return CGRectMake(0, [UIScreen mainScreen].bounds.size.height-_controllerHeight, [UIScreen mainScreen].bounds.size.width, _controllerHeight);
}



- (UIView *)blackView {
    if (_blackView == nil) {
        _blackView = [[UIView alloc] initWithFrame:self.containerView.bounds];
        _blackView.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
    }
    return _blackView;
}

@end
