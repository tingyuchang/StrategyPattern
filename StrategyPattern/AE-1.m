//
//  AE-1.m
//  StrategyPattern
//
//  Created by Ting-Yu Chang on 2014/3/13.
//  Copyright (c) 2014年 Ting-Yu Chang. All rights reserved.
//

#import "AE-1.h"
#import "Half_Electronic.h"

@implementation AE_1

- (id)init{
    self = [super init];
    if (self) {
        self.brand = @"Canon";
        self.CMOS = @"film";
        self.shutterBehavior = [[Half_Electronic alloc] init];
    }
    return self;
}


@end
