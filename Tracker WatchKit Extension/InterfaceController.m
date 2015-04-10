//
//  InterfaceController.m
//  Tracker WatchKit Extension
//
//  Created by Alex Cevallos on 4/10/15.
//  Copyright (c) 2015 AlexCevallos. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()

@end

int globalX = 0;

@implementation InterfaceController


- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
    self.labelFirst.text = @"0";
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}
- (IBAction)buttonUp {
    globalX++;
    self.labelFirst.text = [NSString stringWithFormat:@"%d", globalX];
}

- (IBAction)buttonDown {
    globalX--;
    self.labelFirst.text = [NSString stringWithFormat:@"%d", globalX];
}
@end



