//
//  CEViewController.m
//  HorizontalView
//
//  Created by Chris Eidhof on 9/23/12.
//  Copyright (c) 2012 Chris Eidhof. All rights reserved.
//

#import "CEViewController.h"
#import "CEPageView.h"

@interface CEViewController () {
    NSMutableArray* pages;
}

@end

#define NUM_PAGES 3

NSString* const pageNibName = @"CEPageView";

@implementation CEViewController

- (void)setupPages {
    pages = [NSMutableArray arrayWithCapacity:NUM_PAGES];
    
    CGFloat pageWidth = self.scrollView.bounds.size.width;
    CGRect pageFrame = self.scrollView.bounds;
    
    self.scrollView.contentSize = CGSizeMake(pageWidth*NUM_PAGES, self.scrollView.bounds.size.height);
    
    for(int i = 0; i < NUM_PAGES; i++) {
        NSArray* topLevelObjects = [[NSBundle mainBundle] loadNibNamed:pageNibName owner:nil options:nil];
        CEPageView* pageView = [topLevelObjects lastObject];
        pageFrame.origin.x = pageWidth * i;
        pageView.frame = pageFrame;
        [self.scrollView addSubview:pageView];
        [pages addObject:pageView];
        pageView.title.text = [NSString stringWithFormat:@"Page %d", i+1];
        pageView.slider.value = i / 3.0;
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	[self setupPages];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
