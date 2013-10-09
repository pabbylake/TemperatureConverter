//
//  EnergyViewController.h
//  TemperatureConverter
//
//  Created by Zach Schapiro on 10/7/13.
//  Copyright (c) 2013 Lake. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EnergyViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISegmentedControl *convertFrom;
@property (weak, nonatomic) IBOutlet UISegmentedControl *convertTo;
@property (weak, nonatomic) IBOutlet UILabel *output;
@property (weak, nonatomic) IBOutlet UITextField *input;
- (IBAction)calculate:(id)sender;


@end