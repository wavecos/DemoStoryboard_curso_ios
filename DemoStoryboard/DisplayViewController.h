//
//  DisplayViewController.h
//  DemoStoryboard
//
//  Created by Tekhne on 10/19/13.
//  Copyright (c) 2013 Tekhne. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Photo.h"
#import "InfoViewController.h"

@interface DisplayViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *picture;

@property (nonatomic, strong) Photo *currentPhoto;

- (IBAction)detail:(id)sender;


@end
