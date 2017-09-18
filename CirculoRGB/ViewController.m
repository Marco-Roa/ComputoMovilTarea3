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
    CGFloat rectY = self.view.frame.size.height / 4;
    CGFloat width = 150;
    CGFloat height = 150;
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
    
}

- (IBAction)greenSliderChange:(UISlider *)sender
{
    myGreen = sender.value;
    
    circleLayer.fillColor = [[UIColor colorWithRed:myRed/255.0 green:myGreen/255.0 blue:myBlue/255.0 alpha:1] CGColor];
}

- (IBAction)blueSliderChange:(UISlider *)sender
{
    myBlue = sender.value;
    
    circleLayer.fillColor = [[UIColor colorWithRed:myRed/255.0 green:myGreen/255.0 blue:myBlue/255.0 alpha:1] CGColor];
    
}



@end
