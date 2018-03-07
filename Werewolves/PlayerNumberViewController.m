//
//  PlayerNumberViewController.m
//  Werewolves
//
//  Created by Kay Lu on 5/22/17.
//  Copyright © 2017 a. All rights reserved.
//

#import "PlayerNumberViewController.h"
#import "RoleController.h"

@interface PlayerNumberViewController ()

@end

@implementation PlayerNumberViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if([segue.identifier isEqualToString:@"toRole"]){
        RoleController *rc;
        rc = [segue destinationViewController];
        rc.num = @[[[_tf text] intValue]];
        
    }
}


- (IBAction)ok:(id)sender {
    //NSString *p = [_tf text];
    //NSNumber *pq = @([p intValue]);
    int player = [[_tf text] intValue];
    // alert for illegal input
    if(player<8 || player>23){
        
        UIAlertController * alert=   [UIAlertController
                                      alertControllerWithTitle:@"Alert"
                                      message:@"The players number could be only between 8 and 23(included)."
                                      preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* ok = [UIAlertAction
                             actionWithTitle:@"OK"
                             style:UIAlertActionStyleDefault
                             handler:^(UIAlertAction * action)
                             {
                                 [alert dismissViewControllerAnimated:YES completion:nil];
                                 
                             }];
        
        [alert addAction:ok];
        
        [self presentViewController:alert animated:YES completion:nil];
    }
    /*else{
        // go to next page
        [self performSegueWithIdentifier:@"toRole" sender:self];

    }*/
}

- (IBAction)backgroudTap:(id)sender {
    [self.view endEditing:(YES)];
}


@end
