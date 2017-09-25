//
//  UIColor+Random.m
//  Util
//
//  Created by Rodrigo Soldi on 25/09/17.
//  Copyright © 2017 Rodrigo Soldi. All rights reserved.
//

#import "UIColor+RSRandom.h"

@implementation UIColor (RSRandom)

+ (UIColor *)random {
    return [[UIColor alloc] initWithRed:arc4random_uniform(255.0)/255.0
                                  green:arc4random_uniform(255.0)/255.0
                                   blue:arc4random_uniform(255.0)/255.0
                                  alpha:1.0];
}

@end
