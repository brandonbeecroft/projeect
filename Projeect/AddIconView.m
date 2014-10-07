//
//  AddIconView.m
//  Projeect
//
//  Created by Brandon Beecroft on 10/6/14.
//  Copyright (c) 2014 Awesometistic, LLC. All rights reserved.
//

#import "AddIconView.h"
#import "IconPack.h"

@implementation AddIconView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code

    [IconPack drawAddicon2];
}
//
//-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
//    NSLog(@"touched");
//
//}
//
//-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
//    
//}


@end
