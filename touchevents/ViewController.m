//
//  ViewController.m
//  touchevents
//
//  Created by Gokul on 9/14/15.
//  Copyright © 2015 Gokul. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void) touchesBegan:(NSSet *)touches
            withEvent:(UIEvent *)event {
    UITouch *theTouch = [touches anyObject];
    _startPoint = [theTouch locationInView:self.view];
    CGFloat x = _startPoint.x;
    CGFloat y = _startPoint.y;
   
    CGFloat b = 100.0; // to become viewcontroller width
    CGFloat a = sqrtf(powf((x-b), 2.0)+powf((y-0.0), 2.0));
    CGFloat c = sqrtf(powf((x-0.0), 2.0)+powf((y-0.0), 2.0));
    
    CGFloat C = acosf((powf(a, 2.0)+(powf(b, 2.0)-(powf(c, 2.0))))/(2*a*b));
   
    
    
    NSString *_text = [NSString stringWithFormat:@"a = %f", a];
    NSLog(_text);
    _text = [NSString stringWithFormat:@"b = %f", b];
    NSLog(_text);
    _text = [NSString stringWithFormat:@"c = %f", c];
    NSLog(_text);
    _text = [NSString stringWithFormat:@"angle C = %f", C];
    NSLog(_text);

    }


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
