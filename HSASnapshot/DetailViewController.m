//
//  DetailViewController.m
//  HSASnapshot
//
//  Created by yokada3 on 2016/02/13.
//  Copyright © 2016年 harusou apps. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
            
        // Update the view.
        [self configureView];
    }
}

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
        
        NSString * country = NSLocalizedString(@"country", @"");
        self.detailDescriptionLabel.text = [NSString stringWithFormat:@"%@\n\n%@",country, [self.detailItem description]];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
