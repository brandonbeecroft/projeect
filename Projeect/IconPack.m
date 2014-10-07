//
//  IconPack.m
//  Projeect
//
//  Created by Brandon Beecroft on 10/6/14.
//  Copyright (c) 2014 Awesometistic, LLC. All rights reserved.
//

#import "IconPack.h"


@implementation IconPack

#pragma mark Cache

static UIColor* _timeBlack = nil;
static UIColor* _babyBlue = nil;
static UIColor* _snowGray = nil;

#pragma mark Initialization

+ (void)initialize
{
    // Colors Initialization
    _timeBlack = [UIColor colorWithRed: 0.2 green: 0.212 blue: 0.235 alpha: 1];
    _babyBlue = [UIColor colorWithRed: 0.393 green: 0.741 blue: 0.859 alpha: 1];
    _snowGray = [UIColor colorWithRed: 0.938 green: 0.938 blue: 0.938 alpha: 1];

}

#pragma mark Colors

+ (UIColor*)timeBlack { return _timeBlack; }
+ (UIColor*)babyBlue { return _babyBlue; }
+ (UIColor*)snowGray { return _snowGray; }

#pragma mark Drawing Methods

+ (void)drawAddicon2;
{
    //// General Declarations
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGContextRef context = UIGraphicsGetCurrentContext();


    //// Gradient Declarations
    CGFloat gradient2Locations[] = {0, 0.51, 0.98};
    CGGradientRef gradient2 = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef)@[(id)IconPack.babyBlue.CGColor, (id)[UIColor colorWithRed: 0.393 green: 0.741 blue: 0.859 alpha: 1].CGColor, (id)IconPack.babyBlue.CGColor], gradient2Locations);

    //// Group
    {
        //// Oval Drawing
        UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(0, 0, 64, 63)];
        [IconPack.timeBlack setFill];
        [ovalPath fill];


        //// Oval 2 Drawing
        UIBezierPath* oval2Path = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(13, 13, 38, 37)];
        CGContextSaveGState(context);
        [oval2Path addClip];
        CGContextDrawLinearGradient(context, gradient2, CGPointMake(18.74, 18.24), CGPointMake(45.26, 44.76), 0);
        CGContextRestoreGState(context);
        [IconPack.snowGray setStroke];
        oval2Path.lineWidth = 1;
        [oval2Path stroke];


        //// Text 2 Drawing
        CGRect text2Rect = CGRectMake(11, 6, 42, 80);
        NSMutableParagraphStyle* text2Style = NSMutableParagraphStyle.defaultParagraphStyle.mutableCopy;
        text2Style.alignment = NSTextAlignmentCenter;

        NSDictionary* text2FontAttributes = @{NSFontAttributeName: [UIFont fontWithName: @"Avenir-Light" size: 36], NSForegroundColorAttributeName: UIColor.whiteColor, NSParagraphStyleAttributeName: text2Style};

        [@"+" drawInRect: text2Rect withAttributes: text2FontAttributes];
    }


    //// Cleanup
    CGGradientRelease(gradient2);
    CGColorSpaceRelease(colorSpace);
}

@end
