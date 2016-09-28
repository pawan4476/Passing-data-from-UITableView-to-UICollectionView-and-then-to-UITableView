//
//  ViewController.h
//  PassData
//
//  Created by chaitanya on 15/09/16.
//  Copyright © 2016 chaitanya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>
{
    NSArray *array;
//    NSArray *books;
//    NSArray *sports;
//    NSArray *movies;
//    NSArray *branches;
}
@property (strong, nonatomic) IBOutlet UITableView *tableView;


@end

