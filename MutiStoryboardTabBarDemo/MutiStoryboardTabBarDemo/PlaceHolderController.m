//
//  PlaceHolderController.m
//  MutiStoryboardTabBarDemo
//
//  Created by Vols on 15/3/20.
//  Copyright (c) 2015年 Vols. All rights reserved.
//

#import "PlaceHolderController.h"

@interface PlaceHolderController ()

@property(nonatomic, strong) UIViewController * storyboardViewController;

@end

@implementation PlaceHolderController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (void)loadView{
    [super loadView];
    
    if( self.storyboardViewController == nil ){
        self.storyboardViewController = [self instantiateViewControllerFromStoryboard];
    }
    
    if (self.storyboardViewController != nil && self.navigationController != nil) {
        NSUInteger index =  [self.navigationController.viewControllers indexOfObject:self];
        if (index != NSNotFound) {
            NSMutableArray * viewControllers = [self.navigationController.viewControllers mutableCopy];
            [viewControllers replaceObjectAtIndex:index withObject:self.storyboardViewController];
            [self.navigationController setViewControllers:viewControllers animated:false];
        }
    }
}

- (UIViewController *)instantiateViewControllerFromStoryboard{

    UIStoryboard *stroyboard=[UIStoryboard storyboardWithName:self.restorationIdentifier bundle:nil];
    return [stroyboard instantiateInitialViewController];
}

//func instantiateViewControllerFromStoryboard()  -> UIViewController {
//    var storyboard : UIStoryboard?
//    if var identifier = self.restorationIdentifier {
//        storyboard = UIStoryboard(name: identifier, bundle: nil)
//    }
//    
//    let ret = storyboard?.instantiateInitialViewController() as UIViewController
//    return storyboard?.instantiateInitialViewController() as UIViewController
//}


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
