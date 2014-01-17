//
//  DetailViewController.m
//  TmapMarker
//
//  Created by SDT-1 on 2014. 1. 17..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController () <UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *webVIew;

@end

@implementation DetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    NSLog(@"%@",self.urlStr);
    NSURL *url = [NSURL URLWithString:self.urlStr];
    NSURLRequest  *request = [NSURLRequest requestWithURL:url];
    [self.webVIew loadRequest:request];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
