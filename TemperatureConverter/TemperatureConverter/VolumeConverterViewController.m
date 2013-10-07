//
//  VolumeConverterViewController.m
//  TemperatureConverter
//
//  Created by user on 10/7/13.
//  Copyright (c) 2013 Lake. All rights reserved.
//

#import "VolumeConverterViewController.h"

@interface VolumeConverterViewController ()

@end

@implementation VolumeConverterViewController
@synthesize Input=_Input;
@synthesize OutputUnits=_OutputUnits;
@synthesize InputUnits=_InputUnits;


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

-(int)determineUnits
{ int x=_OutputUnits.selectedSegmentIndex;
    int y=_InputUnits.selectedSegmentIndex;
    if(x==0 && y==0)
    {
        return 1;
    }
    if(x==0 && y==1)
    {
        return 2;
    }
    if(x==0 && y==2)
    {
        return 3;
    }
    if(x==1 && y==0)
    {
        return 4;
    }
    if(x==1 && y==1)
    {
        return 5;
    }
    if(x==1 && y==2)
    {
        return 6;
    }
    if(x==2 && y==0)
    {
        return 7;
    }
    if(x==2 && y==1)
    {
        return 8;
    }
    if(x==2 && y==2)
    {
        return 9;
    }
    else{
        return 0;
    }
}
- (IBAction)Cacluate:(id)sender {
    int z= self.determineUnits;
     NSString *inputText = self.Input.text;
    double x= inputText.doubleValue;
    double output=0.0;
    switch(z)
    { case 1:output=x;break;
        case 2:; break;
            
    }
}
@end
