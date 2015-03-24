//
//  TwoChildViewController.m
//  MutiStoryboardTabBarDemo
//
//  Created by Vols on 15/3/20.
//  Copyright (c) 2015年 Vols. All rights reserved.
//

#import "TwoChildViewController.h"

@interface TwoChildViewController ()

@end

@implementation TwoChildViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)Click:(id)sender {

    self.tabBarController.selectedIndex = 0;
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
