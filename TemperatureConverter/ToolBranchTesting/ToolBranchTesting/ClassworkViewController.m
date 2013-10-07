//
//  ClassworkViewController.m
//  ToolBranchTesting
//
//  Created by Kelvin T on 10/7/13.
//  Copyright (c) 2013 Kelvin T. All rights reserved.
//

#import "ClassworkViewController.h"

@interface ClassworkViewController ()

@end

@implementation ClassworkViewController

@synthesize toolPicker= _toolPicker;
@synthesize SecondField =_SecondField;
@synthesize FirstField=_FirstField;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
        
    UIToolbar* numberToolbar = [[UIToolbar alloc]initWithFrame:CGRectMake(0, 0, 320, 50)];
    numberToolbar.barStyle = UIBarStyleBlackTranslucent;
    numberToolbar.items = [NSArray arrayWithObjects:
                           [[UIBarButtonItem alloc]initWithTitle:@"Cancel" style:UIBarButtonItemStyleBordered target:self action:@selector(cancelNumberPad)],
                           [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil],
                          // [[UIBarButtonItem alloc]initWithTitle:@"Apply" style:UIBarButtonItemStyleDone target:self action:@selector(doneWithNumberPad)],
                           nil];
    [numberToolbar sizeToFit];
    _FirstField.inputAccessoryView = numberToolbar;
    _SecondField.inputAccessoryView = numberToolbar;

}

-(void)cancelNumberPad{
    [self.FirstField resignFirstResponder];
    [self.SecondField resignFirstResponder];
}

/*-(void)doneWithNumberPad{
    NSString *numberFromTheKeyboard = _FirstField.text;
    
    [self.FirstField resignFirstResponder];
    [self.SecondField resignFirstResponder];
}*/


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clearTextField:(id)sender
{
    _SecondField.text=@"";
    _FirstField.text=@"";
    
}
- (IBAction)OneToTwo:(id)sender
{
    _SecondField.text=[NSString stringWithFormat:@"%.5f",[_FirstField.text doubleValue]*0.621371];
}

- (IBAction)TwoToOne:(id)sender
{
        _FirstField.text=[NSString stringWithFormat:@"%.5f",[_SecondField.text doubleValue]*1.60934];
}

//method: pick function given picker data
@end
