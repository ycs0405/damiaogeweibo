//
//  Dock.m
//  damiaogeweibo
//
//  Created by Singer on 14-8-6.
//  Copyright (c) 2014年 Singer. All rights reserved.
//

#import "Dock.h"
#import "NSString+file.h"
#import "DockItem.h"
@implementation Dock

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"tabbar_background.png"]];
    }
    return self;
}

-(void)addDockItemWithIcon:(NSString *)icon title:(NSString *)title{
    DockItem *btn = [DockItem buttonWithType:UIButtonTypeCustom];
    [self addSubview:btn];
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:icon] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:[icon filenameAppend:@"_selected"]] forState:UIControlStateSelected];
    
    //调整dock上的按钮
    [self adjustDockItemsFrame];
}

-(void)adjustDockItemsFrame{
    int count  =  self.subviews.count;
    CGFloat itemWidth = self.frame.size.width/count;
    CGFloat itemHeight = self.frame.size.height;
    
    for (int i = 0; i<count; i++) {
        DockItem *btn = self.subviews[i];
        [btn setFrame:CGRectMake(i*itemWidth, 0, itemWidth, itemHeight)];
    }
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
