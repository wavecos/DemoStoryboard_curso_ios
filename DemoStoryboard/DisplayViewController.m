//
//  DisplayViewController.m
//  DemoStoryboard
//
//  Created by Tekhne on 10/19/13.
//  Copyright (c) 2013 Tekhne. All rights reserved.
//

#import "DisplayViewController.h"

@interface DisplayViewController ()

@end

@implementation DisplayViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    UIImage *imagen = [UIImage imageNamed:self.currentPhoto.filename];
    
    self.picture.image = imagen;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)detail:(id)sender {
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"ShowInfo"]) {
        InfoViewController *ivc = [segue destinationViewController];
        ivc.currentPhoto = self.currentPhoto;
    }
}


@end
