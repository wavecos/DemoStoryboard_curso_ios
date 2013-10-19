//
//  InfoViewController.h
//  DemoStoryboard
//
//  Created by Tekhne on 10/19/13.
//  Copyright (c) 2013 Tekhne. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Photo.h"

@interface InfoViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *notasLabel;

@property (nonatomic, strong) Photo *currentPhoto;
- (IBAction)dismiss:(id)sender;

@end
