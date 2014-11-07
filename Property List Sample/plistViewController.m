//
//  plistViewController.m
//  Property List Sample
//
//  Created by Mubashir Meddekar on 2/09/2014.
//  Copyright (c) 2014 Mubashir Meddekar. All rights reserved.
//

#import "plistViewController.h"

@interface plistViewController ()

@end

@implementation plistViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSString *plist = [[NSBundle mainBundle]pathForResource:@"Test" ofType:@"plist"];
    
    NSDictionary *strings = [[NSDictionary alloc]initWithContentsOfFile:plist];
    
    NSMutableArray *firstarray = [[NSMutableArray alloc]init];
    
    [firstarray addObject:[strings valueForKey:@"First"]];
    
    NSLog(@"%@",firstarray);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
