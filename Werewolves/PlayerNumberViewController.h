//
//  PlayerNumberViewController.h
//  Werewolves
//
//  Created by Kay Lu on 5/22/17.
//  Copyright © 2017 a. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayerNumberViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *tf;
@property (strong, nonatomic) IBOutlet UIButton *ok;
- (IBAction)ok:(id)sender;
//- (IBAction)backgroudTap:(id)sender;

    
    /*@property (strong, nonatomic) IBOutlet UILabel *l2;
    
    @property (strong, nonatomic) IBOutlet UITextField *playerNumber;
    
    @property (strong, nonatomic) IBOutlet UIButton *ok;
*/

@end
