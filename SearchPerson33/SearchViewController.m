//
//  SearchViewController.m
//  SearchPerson33
//
//  Created by DolBy on 13-5-3.
//  Copyright (c) 2013年 Duxinfeng. All rights reserved.
//

#import "SearchViewController.h"
#define BG_COLOR	[UIColor colorWithRed:0.184f green:0.619f blue:0.251f alpha:1.0f]
@interface SearchViewController ()

@end

@implementation SearchViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = NSLocalizedString(@"搜索", @"搜索");
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.searchBar = [[UISearchBar alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
    self.searchBar.showsCancelButton = YES;
    self.searchBar.tintColor = BG_COLOR;
    self.searchBar.placeholder = @"请输入搜索内容";
    [self.view addSubview:self.searchBar];
    [self.searchBar becomeFirstResponder];
    // Do any additional setup after loading the view from its nib.
}

#pragma mark -
#pragma mark searchBar Delegate Methods

-(void)searchBarSearchButtonClicked:(UISearchBar *)searchBar
{
    debugMethod();
    if (self.searchBar.text.length == 0) {
        return;
    }
    [self.searchBar resignFirstResponder];//当用户点击搜索按钮后，退出软键盘
    //清空
    [self clear];
    [self doSearch];
}


-(void)searchBarCancelButtonClicked:(UISearchBar *)searchBar
{
    debugLog(@"debh");
     debugMethod();
}

-(void)searchBarTextDidEndEditing:(UISearchBar *)searchBar{
      debugMethod();

}

-(void)doSearch
{

}

-(void)clear
{

}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
