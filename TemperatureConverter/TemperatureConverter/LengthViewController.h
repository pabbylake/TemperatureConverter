//
//  ClassworkViewController.h
//  ToolBranchTesting
//
//  Created by Kelvin T on 10/7/13.
//  Copyright (c) 2013 Kelvin T. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LengthViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIPickerView *toolPicker;
- (IBAction)clearTextField:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *SecondField;
@property (weak, nonatomic) IBOutlet UITextField *FirstField;
- (IBAction)OneToTwo:(id)sender;
- (IBAction)TwoToOne:(id)sender;

@end
