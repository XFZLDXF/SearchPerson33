//
//  AboutViewController.m
//  SearchPerson33
//
//  Created by DolBy on 13-5-3.
//  Copyright (c) 2013年 Duxinfeng. All rights reserved.
//

#import "AboutViewController.h"

@interface AboutViewController ()
@property(strong,nonatomic) UINavigationBar *navBar;
@end

@implementation AboutViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    CGRect rect = CGRectMake(SCREEN_ORIGIN_X,SCREEN_ORIGIN_Y + 20,SCREEN_WIDTH,NAVBAR_HEIGHT);
    self.navBar = [[UINavigationBar alloc] initWithFrame:rect];
    self.navBar.tintColor = BG_COLOR;
    
    [self.view addSubview:self.navBar];
    
//    self.navBar.backItem
    UINavigationItem *backItem = [[UINavigationItem alloc] initWithTitle:@"返回"];
    
    
    UIBarButtonItem *searchButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSearch target:self action:@selector(skipSearchView:)];
    self.navigationItem.rightBarButtonItem = searchButton;
    
    UIBarButtonItem *aboutButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:self action:@selector(skipAboutView:)];
    self.navigationItem.leftBarButtonItem = aboutButton;
    
    backItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:self action:@selector(skipAboutView:)];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
