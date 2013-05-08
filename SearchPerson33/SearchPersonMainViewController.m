//
//  SearchPersonMainViewController.m
//  SearchPerson33
//
//  Created by DolBy on 13-5-3.
//  Copyright (c) 2013年 Duxinfeng. All rights reserved.
//

#import "SearchPersonMainViewController.h"
#import "SearchViewController.h"
#import "AboutViewController.h"
#import "AboutsViewController.h"
#import <QuartzCore/QuartzCore.h>

//#define NAVBAR_PURPLE_COLOR	[UIColor colorWithRed:0.125f green:0.537f blue:0.218f alpha:1.0f]

#define NAVBAR_PURPLE_COLOR  [UIColor colorWithRed:0.184f green:0.619f blue:0.251f alpha:1.0f]

@interface SearchPersonMainViewController ()

@end

@implementation SearchPersonMainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"寻人平台", @"寻人平台");
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationController.navigationBar.tintColor = BG_COLOR;
   
    // Do any additional setup after loading the view from its nib.
    self.navigationItem.leftBarButtonItem = self.editButtonItem;
    
    UIBarButtonItem *searchButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSearch target:self action:@selector(skipSearchView:)];
    self.navigationItem.rightBarButtonItem = searchButton;
    
    UIBarButtonItem *aboutButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:self action:@selector(skipAboutView:)];
    self.navigationItem.leftBarButtonItem = aboutButton;
}

-(void)skipSearchView:(id)sender
{
    SearchViewController *searchViewController = [[SearchViewController alloc] initWithNibName:@"SearchViewController" bundle:nil];
   
    [self.navigationController pushViewController:searchViewController animated:YES];
    
}

-(void)skipAboutView:(id)sender
{
    
    
 AboutsViewController *aboutsView = [[AboutsViewController alloc] initWithNibName:@"AboutsViewController" bundle:nil];
//
   
    CATransition *animation = [CATransition animation];

    animation.delegate = self;
    animation.duration = 0.75;
    animation.timingFunction = UIViewAnimationCurveEaseInOut;
    animation.type = @"cube";
    animation.subtype=kCATransitionFromLeft;
//    [[self.view layer] addAnimation:animation forKey:@"cube"];
////    [self.view addSubview:_aboutView.view];
////    [self.view removeFromSuperview];
    [self.navigationController.view.layer addAnimation:animation forKey:nil];
    [self.navigationController.view addSubview:aboutsView.view];
    
   // [self.view addSubview:self.aboutView.view];
//    [self addChildViewController:self.aboutView];
//    [self addChildViewController:searchViewController];
    
//    [self transitionFromViewController:searchViewController toViewController:self.aboutView duration:0.75 options:UIViewAnimationOptionTransitionFlipFromRight animations:^{
//        
//    } completion:^(BOOL finished) {
//        
//    }];
//    [CATransaction commit];
//    [self.navigationController pushViewController:self.aboutView animated:YES];
    //[self.navigationController pushViewController:_aboutView animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
