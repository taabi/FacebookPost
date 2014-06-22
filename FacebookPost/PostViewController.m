//
//  PostViewController.m
//  FacebookPost
//
//  Created by taabi on 6/21/14.
//  Copyright (c) 2014 taabi. All rights reserved.
//

#import "PostViewController.h"

@interface PostViewController ()
@property (weak, nonatomic) IBOutlet UIView *WhiteContainerView;
@property (weak, nonatomic) IBOutlet UIView *ActionsView;

@end

@implementation PostViewController

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
    [[UIApplication sharedApplication] setStatusBarHidden:NO withAnimation:NO];
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    self.navigationItem.title = @"Post";
    
    // post container styling
    
    self.WhiteContainerView.layer.cornerRadius = 3;
    self.WhiteContainerView.layer.shadowColor = [UIColor blackColor].CGColor;
    self.WhiteContainerView.layer.shadowOffset = CGSizeMake(0, 0);
    self.WhiteContainerView.layer.shadowOpacity = 0.2;
    self.WhiteContainerView.layer.shadowRadius = 1;
    

    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
