//
//  SendWeiboViewController.m
//  damiaogeweibo
//
//  Created by Singer on 14-8-18.
//  Copyright (c) 2014年 Singer. All rights reserved.
//

#import "SendWeiboViewController.h"

@interface SendWeiboViewController ()

@end

@implementation SendWeiboViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor darkGrayColor];
    self.title = @"发微博";
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"取消" style:UIBarButtonItemStyleBordered target:self action:@selector(cancel)];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"发送" style:UIBarButtonItemStyleBordered target:self action:@selector(send)];

}

-(void) cancel{
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void) send{
    [self dismissViewControllerAnimated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
