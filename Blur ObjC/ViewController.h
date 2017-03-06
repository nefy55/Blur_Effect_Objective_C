//
//  ViewController.h
//  Blur ObjC
//
//  Created by eyupcimen on 01/03/2017.
//  Copyright © 2017 eyupcimen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

    
    @property (nonatomic,strong) UIVisualEffect *effect ;
    
    @property (weak, nonatomic) IBOutlet UIVisualEffectView *visualEffectView;
    @property (strong, nonatomic) IBOutlet UIView *addItemView;
    
- (IBAction)addItemButtonPressed:(UIBarButtonItem *)sender;
- (IBAction)closeButtonPressed:(UIButton *)sender;

@end

