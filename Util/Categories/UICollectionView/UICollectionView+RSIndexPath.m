//
//  UICollectionView+RSIndexPath.m
//  Util
//
//  Created by Rodrigo Soldi on 25/09/17.
//  Copyright © 2017 Rodrigo Soldi. All rights reserved.
//

#import "UICollectionView+RSIndexPath.h"

@implementation UICollectionView (RSIndexPath)

- (BOOL)isValidIndexPath:(NSIndexPath *)indexPath {
    
    if (!indexPath) {
        return NO;
    }
    
    if (indexPath.section >= [self numberOfSections]) {
        return NO;
    }
    
    if (indexPath.item >= [self numberOfItemsInSection:indexPath.section]) {
        return NO;
    }
    
    return YES;
}

@end
