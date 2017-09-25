//
//  ShakeViewController.m
//  Util
//
//  Created by Rodrigo Soldi on 25/09/17.
//  Copyright © 2017 Rodrigo Soldi. All rights reserved.
//

#import "ShakeViewController.h"
#import "UIView+RSShake.h"

@interface ShakeViewController ()

@property (weak, nonatomic) IBOutlet UIView *shakeView;

@end

@implementation ShakeViewController

- (IBAction)didTapShake:(id)sender {
    [self.shakeView shake];
}

@end
