//
//  SearchViewController.h
//  SearchPerson33
//
//  Created by DolBy on 13-5-3.
//  Copyright (c) 2013年 Duxinfeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SearchViewController : UIViewController<UISearchBarDelegate>


@property (strong, nonatomic)  UISearchBar *searchBar;

-(void)doSearch;
-(void)clear;
@end
