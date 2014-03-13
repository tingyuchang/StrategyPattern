//
//  Camera.m
//  StrategyPattern
//
//  Created by Ting-Yu Chang on 2014/3/13.
//  Copyright (c) 2014年 Ting-Yu Chang. All rights reserved.
//

#import "Camera.h"

@implementation Camera

- (id)init{
    self = [super init];
    if (self) {
        // init code
    }
    return self;
}

#pragma mark Public

- (void)performShutter{
    [self.shutterBehavior shutter];
}

@end
