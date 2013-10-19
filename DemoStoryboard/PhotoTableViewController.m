//
//  PhotoTableViewController.m
//  DemoStoryboard
//
//  Created by Tekhne on 10/19/13.
//  Copyright (c) 2013 Tekhne. All rights reserved.
//

#import "PhotoTableViewController.h"

@interface PhotoTableViewController ()

@end

@implementation PhotoTableViewController

NSMutableArray *photos;


- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    photos = [[NSMutableArray alloc] init];
    
    Photo *pic = [[Photo alloc] init];
    [pic setName:@"Montañas Nevadas"];
    [pic setFilename:@"img01.jpg"];
    [pic setNotas:@"El Illimani en un atardecer de junio."];
    
    [photos addObject:pic];
    
    pic = [[Photo alloc] init];
    [pic setName:@"Audi 2014"];
    [pic setFilename:@"img02.jpg"];
    [pic setNotas:@"Audi el mejor auto alemán de la epoca."];
    
    [photos addObject:pic];
    
    pic = [[Photo alloc] init];
    [pic setName:@"Luna"];
    [pic setFilename:@"img03.jpg"];
    [pic setNotas:@"Luna sobre lago Michigan en 1876."];
    
    [photos addObject:pic];

    pic = [[Photo alloc] init];
    [pic setName:@"Mario Bros"];
    [pic setFilename:@"img04.jpg"];
    [pic setNotas:@"Mario Bros haciendo skateboard de noche."];
    
    [photos addObject:pic];

    pic = [[Photo alloc] init];
    [pic setName:@"Lechuzas"];
    [pic setFilename:@"img05.jpg"];
    [pic setNotas:@"Lechuzas en reunion de promoción."];
    
    [photos addObject:pic];

    

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [photos count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    Photo *photo = [photos objectAtIndex:indexPath.row];
    
    cell.textLabel.text = photo.name;
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    if ([segue.identifier isEqualToString:@"ShowPhoto"]) {
        // Get the new view controller using [segue destinationViewController].
        DisplayViewController *dvc = [segue destinationViewController];
        // Pass the selected object to the new view controller.
        NSIndexPath *index = [self.tableView indexPathForSelectedRow];
        Photo *photoSelected = [photos objectAtIndex:index.row];
        
        dvc.currentPhoto = photoSelected;
    }
    
}

@end
