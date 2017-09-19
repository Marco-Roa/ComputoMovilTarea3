//
//  ViewController.m
//  CirculoRGB
//
//  Created by Marco Antonio Roa De La Cruz on 9/17/17.
//  Copyright © 2017 MarcoRoa. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

CAShapeLayer *circleLayer;

float myRed = 0.0;
float myGreen = 0.0;
float myBlue = 0.0;

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CGFloat rectX = self.view.frame.size.width / 2;
    CGFloat rectY = self.view.frame.size.height / 5;
    CGFloat width = 100;
    CGFloat height = 100;
    CGFloat centerX = rectX - width/2;
    CGFloat centerY = rectY - height/2;
    
    /*
    UIBezierPath *bezierPath = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(centerX, centerY, width, height)];
    
    [[UIColor blackColor] set];
    [bezierPath stroke];
    */
    
    
    
    circleLayer = [CAShapeLayer layer];
    [circleLayer setPath:[[UIBezierPath bezierPathWithOvalInRect:CGRectMake(centerX, centerY, width, height)] CGPath]];

    
    //Method to paint the circle
    //circleLayer.fillColor = [[UIColor colorWithRed:202.0/255.0 green:0 blue:11/255.0 alpha:1] CGColor];
    
    [[self.view layer] addSublayer:circleLayer];
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)redSliderChange:(UISlider *)sender
{
    myRed = sender.value;
    
    circleLayer.fillColor = [[UIColor colorWithRed:myRed/255.0 green:myGreen/255.0 blue:myBlue/255.0 alpha:1] CGColor];
    
    self.redCounterLabel.text = [NSString stringWithFormat:@"%d", (int) myRed];
    
    self.hexLabel.text = [NSString stringWithFormat:@"#%02x%02x%02x", (int) myRed, (int) myGreen, (int) myBlue];
}

- (IBAction)greenSliderChange:(UISlider *)sender
{
    myGreen = sender.value;
    
    circleLayer.fillColor = [[UIColor colorWithRed:myRed/255.0 green:myGreen/255.0 blue:myBlue/255.0 alpha:1] CGColor];
    
    self.greenCounterLabel.text = [NSString stringWithFormat:@"%d", (int) myGreen];
    
    self.hexLabel.text = [NSString stringWithFormat:@"#%02x%02x%02x", (int) myRed, (int) myGreen, (int) myBlue];
}

- (IBAction)blueSliderChange:(UISlider *)sender
{
    myBlue = sender.value;
    
    circleLayer.fillColor = [[UIColor colorWithRed:myRed/255.0 green:myGreen/255.0 blue:myBlue/255.0 alpha:1] CGColor];
    
    self.blueCounterLabel.text = [NSString stringWithFormat:@"%d", (int) myBlue];
    
    self.hexLabel.text = [NSString stringWithFormat:@"#%02x%02x%02x", (int) myRed, (int) myGreen, (int) myBlue];
}
- (IBAction)randomButtonPress:(id)sender
{
    myRed = arc4random_uniform(255);
    myGreen = arc4random_uniform(255);
    myBlue = arc4random_uniform(255);
    
    self.redSlider.value = myRed;
    self.greenSlider.value = myGreen;
    self.blueSlider.value = myBlue;
    
    circleLayer.fillColor = [[UIColor colorWithRed:myRed/255.0 green:myGreen/255.0 blue:myBlue/255.0 alpha:1] CGColor];
    
    self.hexLabel.text = [NSString stringWithFormat:@"#%02x%02x%02x", (int) myRed, (int) myGreen, (int) myBlue];
    
    self.redCounterLabel.text = [NSString stringWithFormat:@"%d", (int) myRed];
    
    self.greenCounterLabel.text = [NSString stringWithFormat:@"%d", (int) myGreen];
    
    self.blueCounterLabel.text = [NSString stringWithFormat:@"%d", (int) myBlue];
}

- (IBAction)hideSwitch:(id)sender
{
    if(self.hideSwitch.isOn)
    {
        /*
        circleLayer.fillColor = [[UIColor colorWithRed:myRed/255.0 green:myGreen/255.0 blue:myBlue/255.0 alpha:1] CGColor];
         */
        
        circleLayer.hidden = false;
    }
    else
    {
        /*
        circleLayer.fillColor = [[UIColor colorWithRed:1 green:1 blue:1 alpha:1] CGColor];
         */
        
        circleLayer.hidden = true;
    }
}
- (IBAction)alertButtonPress:(id)sender
{
    NSString *circleState;
    
    if(self.hideSwitch.isOn)
    {
        circleState = [NSString stringWithFormat:@"El valor del circulo es: #%02x%02x%02x", (int) myRed, (int) myGreen, (int) myBlue];
    }
    else
    {
        circleState = @"El circulo no esta visible!!";
    }
    
    NSString *myMessage = [NSString stringWithFormat:@"Nombre: %@ \n Telefono: %@ \n %@",_nameTextField.text, _numberTextField.text, circleState];
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alerta!!"
                                                    message:myMessage
                                                   delegate:self
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
        [alert show];
    
}

//Delegate methods

-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    
    [textField resignFirstResponder];
    return YES;
}

@end
