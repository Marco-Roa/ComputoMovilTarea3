//
//  ViewController.h
//  CirculoRGB
//
//  Created by Marco Antonio Roa De La Cruz on 9/17/17.
//  Copyright © 2017 MarcoRoa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *redCounterLabel;
@property (weak, nonatomic) IBOutlet UILabel *greenCounterLabel;
@property (weak, nonatomic) IBOutlet UILabel *blueCounterLabel;
@property (weak, nonatomic) IBOutlet UISlider *redSlider;
@property (weak, nonatomic) IBOutlet UISlider *blueSlider;
@property (weak, nonatomic) IBOutlet UISlider *greenSlider;
@property (weak, nonatomic) IBOutlet UILabel *hexLabel;
@property (weak, nonatomic) IBOutlet UISwitch *hideSwitch;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *numberTextField;

@end

