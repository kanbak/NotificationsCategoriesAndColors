//
//  ViewController.m
//  NotificationsCategoriesAndColors
//
//  Created by Umut Kanbak on 7/31/13.
//  Copyright (c) 2013 Umut Kanbak. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()
{
    
    __weak IBOutlet UITextField *textFieldOutlet;
}
- (IBAction)go:(id)sender;



@end

@implementation ViewController

- (void)viewDidLoad
{

    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
  
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)go:(id)sender {
    NSNotificationCenter *notificationCenter =[NSNotificationCenter defaultCenter];
    [notificationCenter postNotificationName:@"Color" object:textFieldOutlet.text];
} 
@end
