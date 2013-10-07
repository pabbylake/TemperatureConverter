//
//  MassConverterViewController.m
//  TemperatureConverter
//
//  Created by Max Mendelson on 10/7/13.
//  Copyright (c) 2013 Lake. All rights reserved.
//

#import "MassConverterViewController.h"

@interface MassConverterViewController ()

@end

@implementation MassConverterViewController

@synthesize inputSegControl = _inputSegControl;
@synthesize outputSegControl = _outputSegControl;
@synthesize outputLabel = _outputLabel;
@synthesize inputTF = _inputTF;

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
    [_inputTF becomeFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)convert:(id)sender
{
    NSString *outputValueString = [NSString stringWithFormat:@"%f", [self determineUnitChange]] ;
    
    self.outputLabel.text = outputValueString;
    
    [_inputTF becomeFirstResponder];
}

- (double)determineUnitChange
{
    double number = [_inputTF.text doubleValue];
    
    if(_inputSegControl.selectedSegmentIndex==0)
    {
        switch (_outputSegControl.selectedSegmentIndex)
        {
            case 0: //g
                
                break;
            case 1: //kg
                number /= 1000;
                break;
            case 2: //oz
                number *= 0.035274;
                break;
                
            case 3: //lb
                number *= 0.0022046;
                break;
            
            default:
                break;
        }
    }
    else if(_inputSegControl.selectedSegmentIndex==1)
    {
        switch (_outputSegControl.selectedSegmentIndex)
        {
            case 0: //g
                number *= 1000;
                break;
            case 1: //kg
                
                break;
            case 2: //oz
                number = number * 1000 * 0.035274;
                break;
                
            case 3: //lb
                number = number * 1000 * 0.0022046;
                break;
                
            default:
                break;

        }
    }
    else if(_inputSegControl.selectedSegmentIndex==2)
    {
        switch (_outputSegControl.selectedSegmentIndex)
        {
            case 0: //g
                number /= 0.035274;
                break;
            case 1: //kg
                number /= 35.274;
                break;
            case 2: //oz
                break;
                
            case 3: //lb
                number *= 0.062500;
                break;
                
            default:
                break;
        }
    }
    else if(_inputSegControl.selectedSegmentIndex==3)
    {
        switch (_outputSegControl.selectedSegmentIndex)
        {
            case 0: //g
                number /= 0.0022046;
                break;
            case 1: //kg
                number = number / 1000 / 0.0022046;
                break;
            case 2: //oz
                number *= 16;
                break;
                
            case 3: //lb
                break;
                
            default:
                break;

        }
    }
    return number;
}


@end
