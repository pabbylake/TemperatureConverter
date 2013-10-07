//
//  MassConverterViewController.h
//  TemperatureConverter
//
//  Created by Max Mendelson on 10/7/13.
//  Copyright (c) 2013 Lake. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MassConverterViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISegmentedControl *inputSegControl;
@property (weak, nonatomic) IBOutlet UISegmentedControl *outputSegControl;
@property (weak, nonatomic) IBOutlet UITextField *inputTF;
@property (weak, nonatomic) IBOutlet UILabel *outputLabel;

@end
