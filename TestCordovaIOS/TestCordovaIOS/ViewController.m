//
//  ViewController.m
//  TestCordovaIOS
//
//  Created by huishidai on 2019/5/14.
//  Copyright © 2019 kxys. All rights reserved.
//

#import "ViewController.h"
#import "Plugins/TestViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    TestViewController* testVC = [[TestViewController alloc]initWithNibName:@"TestViewController" bundle:[NSBundle mainBundle]];
    [self presentViewController:testVC animated:YES completion:^{
        testVC.labelTitle.text=@"haha";
    }];
    
 //   [self.navigationController pushViewController:_vc animated:YES];

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
