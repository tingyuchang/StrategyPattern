//
//  Camera.h
//  StrategyPattern
//
//  Created by Ting-Yu Chang on 2014/3/13.
//  Copyright (c) 2014年 Ting-Yu Chang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ShutterBehavior.h"

@interface Camera : NSObject

@property (strong, nonatomic) ShutterBehavior *shutterBehavior;

@property (strong, nonatomic) NSString *brand;
@property (strong, nonatomic) NSString *CMOS;

- (void)performShutter;

@end
