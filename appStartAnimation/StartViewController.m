//
//  StartViewController.m
//  appStartAnimation
//
//  Created by ll on 12/14/15.
//  Copyright © 2015 ll. All rights reserved.
//

#import "StartViewController.h"

@interface StartViewController ()

@end

@implementation StartViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    __block CGAffineTransform newTransform = CGAffineTransformScale(self.view.transform, 1.0, 1.0);

    [UIView animateWithDuration:0 animations:^{
        //
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:3 animations:^{
            newTransform = CGAffineTransformMakeScale(1.5, 1.5);
            self.view.alpha = 0.3;
            [self.view setTransform:newTransform];
            
        } completion:^(BOOL finished) {
            for (id obj in self.view.subviews) {
                if ([obj isKindOfClass:[UIImageView class]]) {
                     printf("haha");
                    [obj removeFromSuperview];
                    self.view.backgroundColor = [UIColor blueColor];
                }
            }
        }];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
