//
//  UINavigationController+PQTarget.m
//  Pods-PQExtension_Example
//
//  Created by wenpq on 2018/9/5.
//

#import "UINavigationController+PQTarget.h"

@implementation UINavigationController (PQTarget)

- (BOOL)popToViewControllerClass:(Class)vcClass animated:(BOOL)animated {
    for (UIViewController *vc in self.viewControllers) {
        if ([vc isKindOfClass:vcClass]) {
            [self popToViewController:vc animated:animated];
            return YES;
        }
    }
    return NO;
}

- (void)replaceViewController:(UIViewController *)vc animated:(BOOL)animated {
    NSArray *vcs = self.viewControllers;
    UIViewController *topViewController = vcs.lastObject;
    vc.hidesBottomBarWhenPushed = topViewController.hidesBottomBarWhenPushed;
    vcs = [self.viewControllers subarrayWithRange:NSMakeRange(0, vcs.count - 1)];
    [self setViewControllers:[vcs arrayByAddingObject:vc] animated:animated];
}

@end
