//
//  D7000.m
//  StrategyPattern
//
//  Created by Ting-Yu Chang on 2014/3/13.
//  Copyright (c) 2014年 Ting-Yu Chang. All rights reserved.
//

#import "D7000.h"
#import "Electronic.h"

@implementation D7000

- (id)init{
    self = [super init];
    if (self) {
        self.brand = @"Nikon";
        self.CMOS = @"Digital";
        self.shutterBehavior = [[Electronic alloc] init];
    }
    return self;
}

@end
