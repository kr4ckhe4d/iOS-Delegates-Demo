//
//  DetailViewController.h
//  DelegatesTutorial
//
//  Created by Nipuna H Herath on 5/1/16.
//  Copyright © 2016 Nipuna H Herath. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol tutorialDelegate
-(void)delegatesDescribedWithDescription:(NSString *)description;
@end

@interface DetailViewController : UIViewController
@property (weak, nonatomic) id tutorialDelegate;

@end
