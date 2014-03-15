//
//  SPLAppearance.m
//  Snowpool
//
//  Created by Tim Ross on 15/03/14.
//  Copyright (c) 2014 Snowpool Limited. All rights reserved.
//

#import "SPLAppearance.h"
#import "SPLModalNavigationBar.h"

@implementation SPLAppearance

+ (void)configure
{
    UIColor *primaryTintColor = [UIColor colorWithRed:43.f/255.f green:128.f/255.f blue:255.f/255.f alpha:1.f];
    UIColor *modalNavigationBarColor = [UIColor colorWithRed:(247/255.0) green:(247/255.0) blue:(247/255.0) alpha:1];
    
    [UINavigationBar appearance].barTintColor = primaryTintColor;
    [UINavigationBar appearance].tintColor = [UIColor whiteColor];
    
    [SPLModalNavigationBar appearance].barTintColor = modalNavigationBarColor;
    [SPLModalNavigationBar appearance].tintColor = primaryTintColor;
    
    [UISegmentedControl appearance].tintColor = primaryTintColor;
    [UIButton appearance].tintColor = primaryTintColor;
    
    UIFont *titleFont = [UIFont fontWithName:@"Avenir-Medium" size:17.0];
    UIFont *bodyFont = [UIFont fontWithName:@"Avenir-Book" size:16.0];
    
    [[UIBarButtonItem appearance] setTitleTextAttributes:@{NSFontAttributeName: titleFont, NSForegroundColorAttributeName: [UIColor whiteColor]} forState:UIControlStateNormal];
    [[UIBarButtonItem appearanceWhenContainedIn:[SPLModalNavigationBar class], nil] setTitleTextAttributes:@{NSFontAttributeName: titleFont, NSForegroundColorAttributeName: primaryTintColor} forState:UIControlStateNormal];
    
    [UINavigationBar appearance].titleTextAttributes = @{NSFontAttributeName: titleFont, NSForegroundColorAttributeName: [UIColor whiteColor]};
    [SPLModalNavigationBar appearance].titleTextAttributes = @{NSFontAttributeName: titleFont, NSForegroundColorAttributeName: [UIColor blackColor]};
    
    [[UISegmentedControl appearance] setTitleTextAttributes:@{NSFontAttributeName: bodyFont} forState:UIControlStateNormal];
    [UILabel appearanceWhenContainedIn:[UITableViewCell class], nil].font = bodyFont;
    [[UIButton appearance] spl_setTitleFont:bodyFont];
}

@end
