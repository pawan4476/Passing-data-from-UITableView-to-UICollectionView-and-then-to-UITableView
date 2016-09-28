//
//  ViewController.m
//  PassData
//
//  Created by chaitanya on 15/09/16.
//  Copyright © 2016 chaitanya. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"
#import "TableViewCell.h"
#import "CollectionViewCell.h"

@interface ViewController ()
@property (assign, nonatomic)int textIndex;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    names = [[NSArray alloc]initWithObjects:@"Books", @"Sports", @"Movies", @"Branches", nil];
//    books = [[NSArray alloc]initWithObjects:@"DataBase", @"Cprogramming", @"ADA", @"Network", nil];
//    sports = [[NSArray alloc]initWithObjects:@"Cricket", @"football", @"running", @"Tennis", nil];
//    movies = [[NSArray alloc]initWithObjects:@"jessi", @"Rocky", @"balu", @"Raja rani", nil];
//    branches = [[NSArray alloc]initWithObjects:@"CSE", @"ISE", @"ECE", @"EEE", nil];

    array = @[@{@"Title" : @"Books",@"Details" : @[@{@"Title" : @"Maths",@"Details" : @[@"Algrbra", @"Arithmetic",@"Calculus",@"Analysis"]},@{@"Title" : @"Physics",@"Details" : @[@"Mechanics", @"Fluid Mechanics",@"Thermodynamics",@"Oscillations"]},@{@"Title" : @"Science",@"Details" : @[@"Astronomy",@"Biology",@"Chemistry",@"Ecology"]},@{@"Title" : @"Chemistry",@"Details" : @[@"Measurement",@"Gases",@"Solutions",@"Liquids"]}]},
                       @{
                           @"Title" : @"Sports",
                           @"Details" : @[
                                   @{
                                       @"Title" : @"Cricket",
                                       @"Details" : @[
                                               @"Sachin Tendulkar",
                                               @"Dhoni",
                                               @"Rahul Dravid",
                                               @"Virat kohili"
                                               ]
                                       },
                                   @{
                                       @"Title" : @"Footbool",
                                       @"Details" : @[
                                               @"Sunil Chhetri",
                                               @"Robin Singh",
                                               @"Subrata Pal",
                                               @"Arnab Mondal"
                                               ]
                                       },
                                   @{
                                       @"Title" : @"Volleyball players",
                                       @"Details" : @[
                                               @"Jimmy George",
                                               @"Arunima Sinha",
                                               @"Abdul Basith",
                                               @"R.K. Purohit"
                                               ]
                                       },
                                   @{
                                       @"Title" : @"Tennis",
                                       @"Details" : @[
                                               @"Leander Paes",
                                               @"Sania Mirza",
                                               @"Mahesh Bhupathi",
                                               @"Rohan Bopanna"
                                               ]
                                       }
                                   ]
                           },
                       @{
                           @"Title" : @"Movies",
                           @"Details" : @[
                                   @{
                                       @"Title" : @"Rocky",
                                       @"Details" : @[
                                               @"S.K. Nagendra Urs",
                                               @"Venkat-Narayan",
                                               @"Yash",
                                               @"Bianca Desai"
                                               ]
                                       },
                                   @{
                                       @"Title" : @"Jessi",
                                       @"Details" : @[
                                               @"Pawan Wadeyar",
                                               @"Anoop Seelin",
                                               @"Dhananjay",
                                               @"Parul Yadav"
                                               ]
                                       },
                                   @{
                                       @"Title" : @"Raja Rani",
                                       @"Details" : @[
                                               @"S.K. Nagendra Urs",
                                               @"G.V.Prakash Kumar",
                                               @"Arya",
                                               @"Nayantara"
                                               ]
                                       },
                                   @{
                                       @"Title" : @"Balu",
                                       @"Details" : @[
                                               @"Maths1",
                                               @"Maths2",
                                               @"Maths3",
                                               @"Maths4"
                                               ]
                                       }
                                   ]
                           },
                       @{
                           @"Title" : @"Books",
                           @"Details" : @[
                                   @{
                                       @"Title" : @"Maths",
                                       @"Details" : @[
                                               @"Maths1",
                                               @"Maths2",
                                               @"Maths3",
                                               @"Maths4"
                                               ]
                                       },
                                   @{
                                       @"Title" : @"Physics",
                                       @"Details" : @[
                                               @"Maths1",
                                               @"Maths2",
                                               @"Maths3",
                                               @"Maths4"
                                               ]
                                       },
                                   @{
                                       @"Title" : @"Science",
                                       @"Details" : @[
                                               @"Maths1",
                                               @"Maths2",
                                               @"Maths3",
                                               @"Maths4"
                                               ]
                                       },
                                   @{
                                       @"Title" : @"Chemistry",
                                       @"Details" : @[
                                               @"Maths1",
                                               @"Maths2",
                                               @"Maths3",
                                               @"Maths4"
                                               ]
                                       }
                                   ]
                           }
                       ];
    
    self.automaticallyAdjustsScrollViewInsets = false;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return array.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"TableViewCell";
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    cell.nameLabels.text = array[indexPath.row][@"Title"];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //[self prepareForSegue:@"segue" sender:self];
   // _textIndex = indexPath.row;
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
       NSIndexPath *path = [[self.tableView indexPathsForSelectedRows]objectAtIndex:0];

    ViewController2 *vc = [segue destinationViewController];
    vc.array = array[path.row][@"Details"];
}
@end
