//
//  UIColorView.m
//  NotificationsCategoriesAndColors
//
//  Created by Umut Kanbak on 7/31/13.
//  Copyright (c) 2013 Umut Kanbak. All rights reserved.
//

#import "UIColorView.h"

@implementation UIColorView

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        NSNotificationCenter *notificationCenter =[NSNotificationCenter defaultCenter];
        [notificationCenter addObserver:self selector:@selector(newColor:) name:@"Color" object:nil];
    
        
        

    }
    return self;
}
-(void)newColor:(NSNotification *)notification;{
    
    if ([notification.object isEqual: @"red"]) {
        self.backgroundColor=[UIColor redColor];}
    else if ([notification.object isEqual: @"green"]) {
        self.backgroundColor=[UIColor greenColor];}
    else if ([notification.object isEqual: @"yellow"]) {
        self.backgroundColor=[UIColor yellowColor];}
    else if ([notification.object isEqual: @"blue"]) {
        self.backgroundColor=[UIColor blueColor];}
    else if ([notification.object isEqual: @"brown"]) {
        self.backgroundColor=[UIColor brownColor];}
   

}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
