//
//  MasterViewController.h
//  MultiDetailReplaceSegue
//
//  Created by Travis Ma on 11/11/14.
//  Copyright (c) 2014 360Vantage. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;


@end

