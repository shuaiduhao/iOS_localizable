//
//  ViewController.m
//  iOS_localizable
//
//  Created by ds.sunagy on 2018/5/17.
//  Copyright © 2018年 ds.sunagy. All rights reserved.
//

#import "ViewController.h"
#import "NewVC.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self addview];
}

-(void)addview{
    //1 ============= 本地化app 名称  InfoPlist.strings    CFBundleDisplayName
    //2 ============= 本地化字符串 名称 Localizable.strings
    UILabel * lab  =[UILabel new];
    lab.frame= CGRectMake(20, 100, 100, 20);
    lab.text=NSLocalizedString(@"text", nil);
    [self.view addSubview:lab];
    lab.backgroundColor= [UIColor yellowColor];
    //3 ============= 本地化字符串 名称不固定 xxx.strings （多人协作时减少冲突）
    UILabel * lab1  =[UILabel new];
    lab1.frame= CGRectMake(20, 200, 100, 20);
    lab1.text= NSLocalizedStringFromTable(@"text", @"Newname", nil);
    [self.view addSubview:lab1];
    lab1.backgroundColor= [UIColor yellowColor];
    //4 ============= 本地化图片 类似2本地化字符串
    UIImageView * imageView =[[UIImageView alloc] init];
    imageView.frame = CGRectMake(0, 250, 100, 100);
    NSString *imageName = NSLocalizedString(@"icons", nil);
    UIImage *image = [UIImage imageNamed:imageName];
    imageView.image = image;
    [self.view addSubview:imageView];
    //5 ============= 本地化图片
    UIImageView * imageView1 =[[UIImageView alloc] init];
    imageView1.frame = CGRectMake(200, 250, 100, 100);
    NSString *imageName1 = NSLocalizedString(@"icon", nil);
    UIImage *image1 = [UIImage imageNamed:imageName1];
    imageView1.image = image1;
    [self.view addSubview:imageView1];
    
    // 6 ============= 在代码中切换语言
}


- (IBAction)chinaClick:(id)sender {
    
    NSArray *lans = @[@"zh-Hans-US"];
    [[NSUserDefaults standardUserDefaults] setObject:lans forKey:@"AppleLanguages"];
}

- (IBAction)enlishclick:(id)sender {
    NSArray *lans = @[@"en-US"];
    [[NSUserDefaults standardUserDefaults] setObject:lans forKey:@"AppleLanguages"];
    
}

- (IBAction)upload:(id)sender {
    // 切换后要重新运行， 语言才会变。
  
    NewVC * new =[NewVC new];
    [self presentViewController:new animated:YES completion:nil];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
