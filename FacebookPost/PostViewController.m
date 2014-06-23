//
//  PostViewController.m
//  FacebookPost
//
//  Created by taabi on 6/21/14.
//  Copyright (c) 2014 taabi. All rights reserved.
//

#import "PostViewController.h"
#import "PhotoViewController.h"

@interface PostViewController ()
@property (weak, nonatomic) IBOutlet UIView *WhiteContainerView;
@property (weak, nonatomic) IBOutlet UIView *ActionsView;
@property (weak, nonatomic) IBOutlet UIImageView *PostImageView;
@property (weak, nonatomic) IBOutlet UILabel *LikeLabel;

- (IBAction)photoButton:(id)sender;
- (IBAction)LikeButton:(id)sender;
- (IBAction)ViewButton:(id)sender;
- (void) onLeftButton;
- (void) onRightButton;

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
    
    // post image styling
    
    self.PostImageView.layer.cornerRadius = 1;
    self.PostImageView.layer.shadowColor = [UIColor blackColor].CGColor;
    self.PostImageView.layer.shadowOffset = CGSizeMake(0, 0);
    self.PostImageView.layer.shadowOpacity = 0.3;
    self.PostImageView.layer.shadowRadius = 2;
    
    
    // Configure the left button
    UIImage *leftButtonImage = [[UIImage imageNamed:@"back_btn"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc] initWithImage:leftButtonImage style:UIBarButtonItemStylePlain target:self action:@selector(onLeftButton)];
    self.navigationItem.leftBarButtonItem = leftButton;
    
    // Configure the right button
    UIImage *rightButtonImage = [[UIImage imageNamed:@"share_btn"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithImage:rightButtonImage style:UIBarButtonItemStylePlain target:self action:@selector(onRightButton)];
    self.navigationItem.rightBarButtonItem = rightButton;
   

    

    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)photoButton:(id)sender {
    UIViewController *vc = [[PhotoViewController alloc] init];
    //vc.modalTransitionStyle = UIModalTransitionStyleCoverVertical; // Rises from below
    
    vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve; // Fade
    // vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal; // Flip
    // vc.modalTransitionStyle = UIModalTransitionStylePartialCurl; // Curl
    
    [self presentViewController:vc animated:YES completion:nil];
    
}

- (IBAction)LikeButton:(id)sender {
    [sender setSelected:YES];
}

- (IBAction)ViewButton:(id)sender {
    [self.view endEditing:YES];
}

- (void) onLeftButton{

}

- (void) onRightButton{
    
}
@end
