//
//  VolumeConverterViewController.h
//  TemperatureConverter
//
//  Created by user on 10/7/13.
//  Copyright (c) 2013 Lake. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VolumeConverterViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *Input;
@property (weak, nonatomic) IBOutlet UISegmentedControl *InputUnits;
@property (weak, nonatomic) IBOutlet UISegmentedControl *OutputUnits;
- (IBAction)Cacluate:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *Output;

@end
