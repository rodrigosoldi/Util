//
//  UIView+Shake.m
//  Util
//
//  Created by Rodrigo Soldi on 25/09/17.
//  Copyright © 2017 Rodrigo Soldi. All rights reserved.
//

#import "UIView+RSShake.h"

static NSTimeInterval const defaultDuration = 0.1;
static float const defaultRepeatCount = 2.0;
static CGFloat const defaultXPositionValue = 10.0f;

@implementation UIView (RSShake)

- (void)shake {
    CABasicAnimation *shakeAnimation = [self shakeAnimation];
    if (shakeAnimation) {
        [self.layer addAnimation:shakeAnimation forKey:@"shakeAnimation"];
    }
}

- (CABasicAnimation *)shakeAnimation {
    
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"position"];
    
    animation.duration = defaultDuration;
    animation.repeatCount = defaultRepeatCount;
    animation.autoreverses = YES;
    
    CGPoint pointFromValue = CGPointMake(self.center.x - defaultXPositionValue, self.center.y);
    CGPoint pointToValue = CGPointMake(self.center.x + defaultXPositionValue, self.center.y);
    
    NSValue *fromValue = [NSValue valueWithCGPoint:pointFromValue];
    NSValue *toValue = [NSValue valueWithCGPoint:pointToValue];
    
    animation.fromValue = fromValue;
    animation.toValue = toValue;
    
    return animation;
}

@end
