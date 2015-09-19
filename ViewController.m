//
//  ViewController.m
//  SplashAnimate
//
//  Created by Pavankumar Arepu on 19/09/15.
//  Copyright (c) 2015 PPAM. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
int DELAY = 4.0,INTERVAL = 1.0;
- (void)viewDidLoad
{
    
    [super viewDidLoad];
    
    [self hideSplash];
    [self startAnimation];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void) hideSplash
{
    self.S1.hidden = YES;
    self.P.hidden = YES;
    self.L.hidden = YES;
    self.A.hidden = YES;
    self.S2.hidden = YES;
    self.H.hidden = YES;
}

-(void)startAnimation
{
    [NSTimer scheduledTimerWithTimeInterval:0.0 target:self selector:@selector(S1Call) userInfo:nil repeats:NO];
}


-(void)S1Call
{
    self.S1.hidden = NO;
    self.S1.layer.anchorPoint = CGPointMake(0.5,0.5);
    
    [self animateReusableCode:self.S1];
    
//    CAKeyframeAnimation *bounceAnimation = [CAKeyframeAnimation animationWithKeyPath:@"transform.scale"];
//    bounceAnimation.values = [NSArray arrayWithObjects:
//                              [NSNumber numberWithFloat:0.0],
//                              [NSNumber numberWithFloat:1.1],
//                              [NSNumber numberWithFloat:0.9],
//                              [NSNumber numberWithFloat:1.0],
//                              nil];
//    bounceAnimation.duration = DELAY;
//    [bounceAnimation setTimingFunctions:[NSArray arrayWithObjects:
//                                         [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut],
//                                         [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut],
//                                         [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut],
//                                         [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut],
//                                         nil]];
//    [self.S1.layer addAnimation:bounceAnimation forKey:@"bounce"];
    
    
    [NSTimer scheduledTimerWithTimeInterval:INTERVAL target:self selector:@selector(PCall) userInfo:nil repeats:NO];
    
}

-(void)PCall
{
    self.P.hidden = NO;
    self.P.layer.anchorPoint = CGPointMake(0.5,0.5);
    [self animateReusableCode:self.P];
    [NSTimer scheduledTimerWithTimeInterval:INTERVAL target:self selector:@selector(LCall) userInfo:nil repeats:NO];
    
}


-(void)LCall
{
    self.L.hidden = NO;
    self.L.layer.anchorPoint = CGPointMake(0.5,0.5);
    [self animateReusableCode:self.L];
    [NSTimer scheduledTimerWithTimeInterval:INTERVAL target:self selector:@selector(ACall) userInfo:nil repeats:NO];
    
}
-(void)ACall
{
    self.A.hidden = NO;
    self.A.layer.anchorPoint = CGPointMake(0.5,0.5);
    [self animateReusableCode:self.A];
    [NSTimer scheduledTimerWithTimeInterval:INTERVAL target:self selector:@selector(S2Call) userInfo:nil repeats:NO];
    
}

-(void)S2Call
{
    self.S2.hidden = NO;
    self.S2.layer.anchorPoint = CGPointMake(0.5,0.5);
    [self animateReusableCode:self.S2];
    [NSTimer scheduledTimerWithTimeInterval:INTERVAL target:self selector:@selector(HCall) userInfo:nil repeats:NO];
    
}
-(void)HCall
{
    self.H.hidden = NO;
    self.H.layer.anchorPoint = CGPointMake(0.5,0.5);
    [self animateReusableCode:self.H];
}


-(void)animateReusableCode:(UIImageView *)yourImage
{
    CAKeyframeAnimation *bounceAnimation = [CAKeyframeAnimation animationWithKeyPath:@"transform.scale"];
    bounceAnimation.values = [NSArray arrayWithObjects:
                              [NSNumber numberWithFloat:0.0],
                              [NSNumber numberWithFloat:2.0],
                              [NSNumber numberWithFloat:1.0],
                              [NSNumber numberWithFloat:2.0],
                              nil];
    bounceAnimation.duration = DELAY;
    [bounceAnimation setTimingFunctions:[NSArray arrayWithObjects:
                                         [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut],
                                         [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut],
                                         [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut],
                                         [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut],
                                         nil]];
    [yourImage.layer addAnimation:bounceAnimation forKey:@"bounce"];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
