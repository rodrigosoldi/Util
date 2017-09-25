//
//  RandomViewController.m
//  Util
//
//  Created by Rodrigo Soldi on 25/09/17.
//  Copyright © 2017 Rodrigo Soldi. All rights reserved.
//

#import "RandomViewController.h"
#import "UIColor+RSRandom.h"

@interface RandomViewController ()

@property (weak, nonatomic) IBOutlet UIView *randomView;

@end

@implementation RandomViewController


- (IBAction)didTapRandom:(id)sender {
    self.randomView.backgroundColor = [UIColor random];
}

@end
