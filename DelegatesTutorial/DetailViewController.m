//
//  DetailViewController.m
//  DelegatesTutorial
//
//  Created by Nipuna H Herath on 5/1/16.
//  Copyright © 2016 Nipuna H Herath. All rights reserved.
//

#import "DetailViewController.h"


@interface DetailViewController ()

@property (weak, nonatomic) IBOutlet UITextField *delegateDesc;
@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)donePressed:(UIButton *)sender {
    // Here we tell delegate to invoke method in parent view.
    [self.tutorialDelegate delegatesDescribedWithDescription:
     self.delegateDesc.text];
    
    
    
    
    // close modal view
    [self dismissModalViewControllerAnimated:YES];

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
