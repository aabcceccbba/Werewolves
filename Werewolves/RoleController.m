//
//  RoleController.m
//  Werewolves
//
//  Created by Kay Lu on 10/27/17.
//  Copyright © 2017 a. All rights reserved.
//

#import "RoleController.h"

@interface RoleController ()

@end

@implementation RoleController

@synthesize test, num;

- (void)viewDidLoad {
    test.text = num;
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
