//
//  AboutsViewController.m
//  SearchPerson33
//
//  Created by DolBy on 13-5-4.
//  Copyright (c) 2013年 Duxinfeng. All rights reserved.
//

#import "AboutsViewController.h"

@interface AboutsViewController ()

@end

@implementation AboutsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.navigationBar.tintColor = BG_COLOR;
        
        self.title = NSLocalizedString(@"寻人平台", @"寻人平台");
         
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.navigationBar removeFromSuperview];
    self.navigationController.navigationItem.rightBarButtonItem = BARBUTTON(@"BACK", @selector(backSearchPersonView));
    UIBarButtonItem *searchButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSearch target:self action:@selector(skipSearchView:)];
    self.navigationItem.rightBarButtonItem = searchButton;
    
    UIBarButtonItem *aboutButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:self action:@selector(skipAboutView:)];
    self.navigationItem.leftBarButtonItem = aboutButton;
   
    // Do any additional setup after loading the view from its nib.
}

-(void)backSearchPersonView
{
    debugLog(@"返回主视图");

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
