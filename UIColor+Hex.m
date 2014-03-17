//
//  UIColor+Hex.m
//
//  Created by Bogdan Constantinescu on 17/03/14.
//  Copyright (c) 2014 Bogdan Constantinescu. All rights reserved.
//

#import "UIColor+Hex.h"

@implementation UIColor (Hex)

+ (UIColor *) colorWithHex: (NSString *)aHex {
    unsigned int hexColor;
    
    double r = 0.0;
    double g = 0.0;
    double b = 0.0;
    
    NSScanner *scanner = [NSScanner scannerWithString: aHex];
    
    if ([scanner scanHexInt: &hexColor]) {
        r = ((hexColor >> 16) & 0xFF) / 255.0;
        g = ((hexColor >> 8)  & 0xFF) / 255.0;
        b = (hexColor         & 0xFF) / 255.0;
    }
    
    return [UIColor colorWithRed:r green:g blue:b alpha:1.0];
}

@end
