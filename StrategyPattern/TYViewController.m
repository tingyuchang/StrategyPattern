//
//  TYViewController.m
//  StrategyPattern
//
//  Created by Ting-Yu Chang on 2014/3/13.
//  Copyright (c) 2014年 Ting-Yu Chang. All rights reserved.
//

#import "TYViewController.h"
#import "AE-1.h"
#import "D7000.h"

@interface TYViewController ()

@property (strong, nonatomic) AE_1 *ae_1;
@property (strong, nonatomic) D7000 *d7000;

- (void)decorateView;
- (void)ae_1_Shutter;
- (void)d7000_Shutter;

@end

@implementation TYViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.ae_1 = [[AE_1 alloc] init];
        self.d7000 = [[D7000 alloc] init];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self decorateView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark Private

- (void)decorateView{
    
    UIButton *AE_1_Button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    AE_1_Button.frame = CGRectMake(110, 100, 100, 30);
    [AE_1_Button setTitle:@"AE-1" forState:UIControlStateNormal];
    [AE_1_Button addTarget:self action:@selector(ae_1_Shutter) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:AE_1_Button];
    
    UIButton *d7000_Button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    d7000_Button.frame = CGRectMake(110, 150, 100, 30);
    [d7000_Button setTitle:@"D7000" forState:UIControlStateNormal];
    [d7000_Button addTarget:self action:@selector(d7000_Shutter) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:d7000_Button];
    
}

- (void)ae_1_Shutter{
    [self.ae_1 performShutter];
}

- (void)d7000_Shutter{
    [self.d7000 performShutter];
}

@end
