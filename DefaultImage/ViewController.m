//
//  ViewController.m
//  DefaultImage
//
//  Created by zhangwei on 17/5/2.
//  Copyright © 2017年 jyall. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+DefaultImage.h"
@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIImageView *imageView = [[UIImageView alloc]init];
    [self.view addSubview:imageView];
    imageView.image = [UIImage produceNewImageWithSmallImage:[UIImage imageNamed:@"JZ_Channel_two_selected"] smallImageSize:CGSizeMake(42, 42) withOutSize:CGSizeMake(200, 80)];
    imageView.frame = CGRectMake(10, 100, 200, 80);
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    
    
    
    UIImageView *imageView_1 = [[UIImageView alloc]init];
    [self.view addSubview:imageView_1];
    imageView_1.image = [UIImage produceNewImageWithSmallImage:[UIImage imageNamed:@"JZ_Channel_two_selected"] smallImageSize:CGSizeMake(42, 42) withOutSize:CGSizeMake(100, 80)];
    imageView_1.frame = CGRectMake(10, 200, 100, 80);
    imageView_1.contentMode = UIViewContentModeScaleAspectFit;
    
    
    UIImageView *imageView_2 = [[UIImageView alloc]init];
    [self.view addSubview:imageView_2];
    imageView_2.image = [UIImage produceNewImageWithSmallImage:[UIImage imageNamed:@"JZ_Channel_two_selected"] smallImageSize:CGSizeMake(42, 42) withOutSize:CGSizeMake(300, 150)];
    imageView_2.frame = CGRectMake(10, 300, 300, 150);
    imageView_2.contentMode = UIViewContentModeScaleAspectFit;
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
