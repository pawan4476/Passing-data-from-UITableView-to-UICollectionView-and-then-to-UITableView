//
//  ViewController2.m
//  PassData
//
//  Created by chaitanya on 15/09/16.
//  Copyright © 2016 chaitanya. All rights reserved.
//

#import "ViewController2.h"
#import "ViewController3.h"
#import "CollectionViewCell.h"

@interface ViewController2 ()

@property (assign, nonatomic)int textIndex;

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = false;
    
    
    
//    names4 = [[NSArray alloc]initWithObjects:_names, nil];
//    books4 = [[NSArray alloc]initWithObjects:_books, nil];
//    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return _array.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *identifier = @"CollectionViewCell";
    
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    cell.lb1.text = _array[indexPath.item][@"Title"];
    //  UIImageView *recipeImageView = (UIImageView *)[cell viewWithTag:100];
    //cell.recipeImageView.image = [UIImage imageNamed:[images objectAtIndex:indexPath.row]];
    
    return cell;
    
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    //_textIndex = indexPath.item;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSIndexPath *path = [[self.collectionView indexPathsForSelectedItems]objectAtIndex:0];
    ViewController3 *vc = [segue destinationViewController];
    vc.array = _array[path.item][@"Details"];
}

@end
