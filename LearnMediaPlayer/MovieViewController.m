//
//  MovieViewController.m
//  LearnMediaPlayer
//
//  Created by foreveross－bj on 15/5/11.
//  Copyright (c) 2015年 foreveross－bj. All rights reserved.
//

#import "MovieViewController.h"
#import <MediaPlayer/MediaPlayer.h>
#import <ASIHTTPRequest.h>

@interface MovieViewController ()

@property (nonatomic, strong) MPMoviePlayerViewController *moviePlayerVC;

@end

@implementation MovieViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.moviePlayerVC = [[MPMoviePlayerViewController alloc] initWithContentURL:[NSURL URLWithString:@"http://43.251.16.179/movies/Gee.mp4"]];
    self.moviePlayerVC.view.frame = self.view.frame;
    [self.view addSubview:self.moviePlayerVC.view];
    
    [self.moviePlayerVC.moviePlayer prepareToPlay];
    [self.moviePlayerVC.moviePlayer play];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

-(NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskLandscape;
}

-(BOOL)shouldAutorotate
{
    return YES;
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
