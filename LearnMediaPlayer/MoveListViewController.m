//
//  MoveListViewController.m
//  LearnMediaPlayer
//
//  Created by foreveross－bj on 15/5/11.
//  Copyright (c) 2015年 foreveross－bj. All rights reserved.
//

#import "MoveListViewController.h"
#import "MovieViewController.h"

@interface MoveListViewController ()

@end

@implementation MoveListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)play:(id)sender {
    MovieViewController *movieVC = [[MovieViewController alloc] init];
    [self presentViewController:movieVC animated:YES completion:nil];
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
