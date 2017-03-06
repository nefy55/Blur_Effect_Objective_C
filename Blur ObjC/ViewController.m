//
//  ViewController.m
//  Blur ObjC
//
//  Created by eyupcimen on 01/03/2017.
//  Copyright © 2017 eyupcimen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _effect = _visualEffectView.effect ;
    _visualEffectView.effect  = nil ;
    _addItemView.layer.cornerRadius = 5.0f ;
    
}


-(void)animateIn {
    [self.view addSubview:_addItemView];
    
    _addItemView.center = self.view.center ;
    _addItemView.transform = CGAffineTransformMakeScale(1.3 , 1.3);
    _addItemView.alpha = 0 ;
    
    
    [UIView animateWithDuration:0.4 animations:^{
        
        _visualEffectView.effect = _effect ;
        _addItemView.alpha = 1 ;
        _addItemView.transform = CGAffineTransformIdentity ;
    }];
}
    
    
-(void)animateOut {
    [UIView animateWithDuration:0.3 animations:^{
        
        _addItemView.transform = CGAffineTransformMakeScale( 0.7 , 0.7 );
        _addItemView.alpha = 0 ;
        _visualEffectView.effect = nil ;
        
    } completion:^(BOOL finished) {
        [_addItemView removeFromSuperview] ;
    }];
}


- (IBAction)addItemButtonPressed:(UIBarButtonItem *)sender {
    
    [self animateIn];
}
    
- (IBAction)closeButtonPressed:(UIButton *)sender {
    [self animateOut];
}
    
@end
