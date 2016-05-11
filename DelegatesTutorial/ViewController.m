//
//  ViewController.m
//  DelegatesTutorial
//
//  Created by Nipuna H Herath on 5/1/16.
//  Copyright © 2016 Nipuna H Herath. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"

@interface ViewController ()<tutorialDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)delegatesDescribedWithDescription:(NSString *)description{
    _delegateLabel.text = description;

}

// ViewController.h
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"detailViewSegue"]) {
        DetailViewController *detailViewController =
        segue.destinationViewController;
        // here we set the ViewController to be delegate in
        // detailViewController
        detailViewController.tutorialDelegate = self;
    }
}
@end
