//
//  UINavigationController+PQTarget.h
//  Pods-PQExtension_Example
//
//  Created by wenpq on 2018/9/5.
//

#import <UIKit/UIKit.h>

@interface UINavigationController (PQTarget)

/**
 Pop to ViewController With Class
 
 @param vcClass the pop viewController Class
 @return if pop success
 */
- (BOOL)popToViewControllerClass:(Class)vcClass animated:(BOOL)animated;


/**
 Replace top vc on stack
 
 @param vc
 @param animated if animate
 */
- (void)replaceViewController:(UIViewController *)vc animated:(BOOL)animated;

@end
