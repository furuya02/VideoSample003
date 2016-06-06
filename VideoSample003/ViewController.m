//
//  ViewController.m
//  VideoSample003
//
//  Created by hirauchi.shinichi on 2016/06/07.
//  Copyright © 2016年 SAPPOROWORKS. All rights reserved.
//

#import "ViewController.h"
@import AVFoundation;
@import AVKit;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSURL *url = [NSURL URLWithString:@"https://s3-ap-northeast-1.amazonaws.com/hls-sample/index.m3u8"];

    AVPlayer *avPlayer = [AVPlayer playerWithURL:url];
    AVPlayerViewController *controller = [[AVPlayerViewController alloc]init];
    controller.player = avPlayer;
    controller.view.frame = CGRectMake(0, 0, self.view.bounds.size.width,300);
    [self addChildViewController:controller]; // 最大画面になった時、これが使用される感じ
    [self.view addSubview:controller.view];
    [avPlayer play]; //再生
}

@end
