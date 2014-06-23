//
//  PhotoViewController.m
//  FacebookPost
//
//  Created by taabi on 6/23/14.
//  Copyright (c) 2014 taabi. All rights reserved.
//

#import "PhotoViewController.h"

@interface PhotoViewController ()
- (IBAction)onTap:(id)sender;
- (IBAction)testBUtton:(id)sender;


@end

@implementation PhotoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onTap:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)testBUtton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
