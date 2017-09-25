//
//  UITableView+RSIndexPath.m
//  Util
//
//  Created by Rodrigo Soldi on 25/09/17.
//  Copyright © 2017 Rodrigo Soldi. All rights reserved.
//

#import "UITableView+RSIndexPath.h"

@implementation UITableView (RSIndexPath)

- (BOOL)isValidIndexPath:(NSIndexPath *)indexPath {
    if (!indexPath) {
        return NO;
    }
    
    if (indexPath.section >= [self numberOfSections]) {
        return NO;
    }
    
    if (indexPath.row >= [self numberOfRowsInSection:indexPath.section]) {
        return NO;
    }
    
    return YES;
}

@end
