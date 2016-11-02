//
//  ViewController.m
//  VXPickerImage
//
//  Created by voidxin on 16/11/1.
//  Copyright © 2016年 wugumofang. All rights reserved.
//

#import "ViewController.h"
#import "VXPickerImage.h"
@interface ViewController ()<VXPickerImageNavControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.imageView.userInteractionEnabled = YES;
    self.imageView.backgroundColor = [UIColor grayColor];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapAction:)];
    [self.imageView addGestureRecognizer:tap];
    
   
}
- (void)tapAction:(UITapGestureRecognizer *)tap{
    VXPickerImageNavController *pickerVC = [[VXPickerImage alloc] returnPickerImageView];
    pickerVC.pickerDelegate = self;
    
    [self presentViewController:pickerVC animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)selectImageComplete:(NSMutableArray *)dataArray{
   VXImageModel *imageModel = dataArray.lastObject;
    [self.imageView setImage:imageModel.fullScreenImage];
}
@end
