//
//  EnergyViewController.m
//  TemperatureConverter
//
//  Created by Zach Schapiro on 10/7/13.
//  Copyright (c) 2013 Lake. All rights reserved.
//

#import "EnergyViewController.h"

@interface EnergyViewController ()

@end

@implementation EnergyViewController
@synthesize input = _input;
@synthesize convertFrom = _convertFrom;
@synthesize convertTo = _convertTo;
@synthesize output = _output;

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)calculate:(id)sender
{
    int selected = [self.convertFrom selectedSegmentIndex];
    int convert = [self.convertTo selectedSegmentIndex];
    NSString *inputText = self.input.text;
    [self.input becomeFirstResponder];
    
    if(![inputText isEqualToString:@""])
    {
        double inputValue = [inputText doubleValue];
        double outputValue = 0.0;
        if(selected ==0)
        {
            switch (convert)
            {
                case 0:outputValue = inputValue;break;
                case 1:outputValue = inputValue/1000;break;
                case 2:outputValue = inputValue/4184*1000;break;
                case 3:outputValue = inputValue/4184;
            }
        }
        
        else if (selected == 1)
        {
            switch (convert)
            {
                case 0:outputValue = inputValue*1000;break;
                case 1:outputValue = inputValue;break;
                case 2:outputValue = inputValue/4184*1000*1000;break;
                case 3:outputValue = inputValue*1000/4184;break;
            }
        }
        
        else if (selected == 2)
        {
            switch (convert)
            {
                case 0:outputValue = inputValue/1000*4184;break;
                case 1:outputValue = inputValue*4184/1000/1000;break;
                case 2:outputValue = inputValue;break;
                case 3:outputValue = inputValue/1000;break;
            }
        }
        
        else if (selected ==3)
        {
            switch (convert)
            {
                case 0:outputValue = inputValue*4184;break;
                case 1:outputValue = inputValue*4184/1000;break;
                case 2:outputValue = inputValue*1000;break;
                case 3:outputValue = inputValue;break;
            }
        }
        
        NSString *outputValueString = [NSString stringWithFormat:@"%f", outputValue];
        
        self.output.text = outputValueString;

        [self.input resignFirstResponder];
        
    }
    else
    {
        //error message
        UIAlertView *errorMessage = [[UIAlertView alloc]
                                     initWithTitle:@"Error"
                                     message:@"You entered an invalid number"
                                     delegate:nil
                                     cancelButtonTitle:@"OK"
                                     otherButtonTitles: nil];
        
        [errorMessage show];
    }

}
@end
